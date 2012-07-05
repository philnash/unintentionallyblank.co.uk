---
layout: post
title: Semantic Header Markup Means Search Engines Will Understand Too
wordpress_id: 120
wordpress_url: http://www.unintentionallyblank.co.uk/2007/05/01/semantic-header-markup-means-search-engines-will-understand-too/
date: 2007-05-01 00:32:09 +01:00
---
<p>I was going to write a post on how using semantically correct markup for your post titles would improve the accessibility of your page, impress the meaning of your content to both readers and search engines and generally add to the level of well-being in the world. Sadly for me, Chris Pearson got there first with his post, <a href="http://www.pearsonified.com/2007/04/definitive-guide-to-semantic-markup.php">The Definitive Guide to Semantic Web Markup for Blogs</a>. The other unfortunate thing is that he probably did it better than I would have done!</p>

<p>Flattery aside, the article really does hit the spot. Header elements are not to be used for presentation and selecting the size of font you use for a particular word, they convey the hierarchy and meaning behind each heading and subheading and should be used like that. Recently I changed my post titles on their single pages from <code class="inline">&lt;h2&gt;</code>s to <code class="inline">&lt;h1&gt;</code>s as I realised that the title of my post is the most important part of the page, not the name of my blog. I do have my own tip as well, so I wrote this post instead.</p>

<h3>Titles Are Seen More Than You Think</h3>

<p>Chris points out that <a href="http://www.sitepoint.com/article/html-title">the <code class="inline">&lt;title&gt;</code> element appears not only at the top of your page, on tabs, in bookmarks, etc.</a> but is weighted quite heavily in search algorithms and appears as the link in search engine results. Even the <abbr title="World Wide Web Consortium">W3C</abbr> calls it the <a href="http://www.w3.org/QA/Tips/good-titles">"most important element of a quality web page"</a>.</p>

<p>So how do you create that perfect title? In my opinion, you need to put across the content of the page in it's title. In the case of a blog, what better way to do that then use the post title. If it is the homepage then the name of the blog and the tagline seem like a logical choice. If you navigate this site, you will see how I display my titles -- Post Title :: Unintentionally Blank. This allows people to read what the post is about rather than repeatedly reading my blog name if there are a number of links to my blog. I have done this with the following code:</p>

<pre><code>&lt;?php
wp_title(' ');
if(wp_title(' ', false)) { echo ' :: '; }
bloginfo('name');
if (is_home()) {  echo ' :: '; bloginfo('description'); }
?&gt;</code></pre>

<p>If you add this to you <code class="inline">&lt;head&gt;</code> section your blog will display the page title if you are on anything but the front page and your blog name and tagline on your main page, just like mine.</p>

<h3>Improve Your Site</h3>

<p>So go forth, read <a href="http://www.pearsonified.com/2007/04/definitive-guide-to-semantic-markup.php">Chris Pearson's article</a>, tweak your theme and play with how you use headers, I am already planning to add my tagline to my <code class="inline">&lt;h1&gt;</code> on my front page, try out my Wordpress title method and watch the targeted search results come in, whilst feeling smugly satisfied because you have improved your markup not employed some dodgy tactic to lure people in. <a href="http://www.unintentionallyblank.co.uk/contact/">Drop me line</a> or leave me a comment if you need any help.</p>
