---
layout: post
title: Pinging Google Blog Search With Wordpress
wordpress_id: 44
wordpress_url: http://www.unintentionallyblank.co.uk/2006/10/05/pinging-google-blog-search-with-wordpress/
date: 2006-10-05 23:59:37 +01:00
---
<p>Google <a href="http://googleblog.blogspot.com/2006/10/got-blog-will-ping.html">announced the Google Blog Search Pinging Service</a> today. If you want to make sure your latest posts appear in Google's <a href="http://www.google.com/blogsearch">Blog Search</a> then, like other services including <a href="http://www.technorati.com">Technorati</a> or <a href="http://www.weblogs.com">Weblogs.com</a>, you will want to <a href="http://en.wikipedia.org/wiki/Ping_blog">ping</a> them when you update. This can be done in two ways:</p>
<dl>
<dt>Manual Ping</dt>
<dd>If you're not technically minded and want the simplest method of pinging Google, simply go to <a href="http://blogsearch.google.com/ping">http://blogsearch.google.com/ping</a> and enter your blog's <abbr title="Uniform Resource Locator">URL</abbr> everytime it updates.</dd>
<dt>Automatic Ping</dt>
<dd>If you want to let <a href="http://www.wordpress.org">Wordpress</a> deal with your pings for you everytime you update then do the following: in your Wordpress admin area, go to "options" then "writing". At the bottom of the page you should find the Update Services section. By default this should have <code class="inline">rpc.pingomatic.com</code> in the text box. This is fine, as <a href="http://www.pingomatic.com">Pingomatic</a> pings a number of services for you. It doesn't cover Google Blog Search directly though. To add this you need to add <code class="inline">http://blogsearch.google.com/ping/RPC2</code> to the Update Services box, on a new line.</dd>
</dl>
<p>That's it, now you can keep Google, as well as all the other update services, interested when you post. For a more comprehensive list of update services, please see this <a href="http://www.instant-info-online.com/wordpress-compressed-all-inclusive-ping-list.html">all inclusive ping list</a>.</p>
