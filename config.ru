require 'bundler'
require 'json'
Bundler.setup
Bundler.require(:default)
require 'rack/contrib/try_static'
run Sinatra::Application

set :public_folder, Proc.new { File.join(root, "_site") }

APICache.store = APICache::DalliStore.new(Dalli::Client.new)
TLA_URL = 'http://www.text-link-ads.com/xml.php?k=VPS9QNEO50UUUYN5Y7W3&l=rails-tla-2.0.1&f=json'


['/', '/page/:number/?'].each do |url|
  get url do
    tla = APICache.get(TLA_URL,
      :fail => '[]', :cache => 3600, :period => 0, :valid => :forever
    )
    tla = JSON.parse(tla)
    str = "<ul>"
    tla.each do |link|
      str << "<li>#{link['BeforeText']}<a href='#{link['URL']}'>#{link['Text']}</a>#{link['AfterText']}</li>"
    end
    str << '</ul>'
    if params[:number]
      file = File.read("_site/page#{params[:number]}/index.html")
    else
      file = File.read('_site/index.html')
    end
    file.gsub!('### ADS ###', str)
    file
  end
end

get '/:slug/?' do
  File.read("_site/#{params[:slug]}/index.html")
end

get '/:year/:month/:day/:slug/?' do
  File.read("_site/#{params[:year]}/#{params[:month]}/#{params[:day]}/#{params[:slug]}/index.html")
end
