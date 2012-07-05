---
layout: post
title: A PHP 301 Redirect
wordpress_id: 126
wordpress_url: http://www.unintentionallyblank.co.uk/2007/05/14/a-php-301-redirect/
date: 2007-05-14 23:39:36 +01:00
---
<p>A friend pointed out recently that the subdomain my tests and examples are kept on had no index page in the root, so if anyone removed the page name from the address they could access my entire directory. I didn't think that this was a good idea, so I decided to change it. I could have added an index.html file or something else there to protect the directory, but I wanted to link it in with the rest of the blog and learn something at the same time.</p>

<p>I created a page on which I could display all of my tests and examples, it's the <a href="http://www.unintentionallyblank.co.uk/test-centre/">Test Centre</a> that you can find linked above now. As a page in my blog, it is part of the main domain, so how do I connect the subdomain http://test.unintentionallyblank.co.uk to the page http://www.unintentionallyblank.co.uk/test-centre/?</p>

<h3>301 Redirect</h3>

<p>There are many ways of redirecting a page, and many that I am not going to talk about as there is <a href="http://www.google.com/search?hl=en&amp;q=redirecting+web+pages&amp;btnG=Search">plenty of information</a> out there on which method is the best. As far as I have seen, the only redirect to perform is a 301 redirect. It means "permanently moved" and it works for browsers and search bots.</p>

<p>I decided to implement the redirect in <abbr title="Hypertext PreProcessor">PHP</abbr> as it made sense to me. The code is simple, all you need to do is deliver a couple of new <abbr title="Hyper Text Transfer Protocol">http</abbr> headers to whatever was visiting the page you wanted to redirect, one to tell the visitor the page has moved and one to say where. Here it is:</p>

<pre><code>&lt;?php
Header( "HTTP/1.1 301 Moved Permanently" );
Header( "Location: REDIRECT URL HERE" );
?&gt;</code></pre>

<p>That's all there is to it! In my case I entered the above into Notepad, saved it as index.php and uploaded it to the root of <a href="http://test.unintentionallyblank.co.uk">http://test.unintentionallyblank.co.uk</a>, now visiting it brings you to the test centre at http://www.unintentionallyblank.co.uk/test-centre/. Try it out. If you want to replace other pages, just name your file accordingly and place it in the relevant location.</p>

<p>There are other ways to do this, different languages and scripts or editing the .htaccess file, but this seemed to be the easiest way to go for me, hopefully it can help you too.</p>
