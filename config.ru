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
    if params[:number]
      return File.read("_site/page#{params[:number]}/index.html")
    else
      return File.read('_site/index.html')
    end
  end
end

get '/:slug/?' do
  File.read("_site/#{params[:slug]}/index.html")
end

get '/:year/:month/:day/:slug/?' do
  File.read("_site/#{params[:year]}/#{params[:month]}/#{params[:day]}/#{params[:slug]}/index.html")
end
