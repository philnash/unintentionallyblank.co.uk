---
layout: post
title: Top 5 Ways To Keep Your WordPress Blog Valid (And Why It Matters)
wordpress_id: 123
wordpress_url: http://www.unintentionallyblank.co.uk/2007/05/09/top-5-ways-to-keep-your-wordpress-blog-valid-and-why-it-matters/
date: 2007-05-09 20:02:14 +01:00
---
<p>Making your blog look good and work well is a major consideration of anyone who wants to do well in the blogosphere. Making sure your blog is valid and adheres to the standards of the <abbr title="World Wide Web Consortium">W3C</abbr> will ensure that your theme will look good in all browsers, even those yet to be released, be more accessible, easier to maintain and easier for search engines to crawl. So how do you go about making sure your site sticks within the guidelines?</p>

<h3>A Great Base</h3>

<p>One of the best things about <a href="http://www.wordpress.org">WordPress</a> is it's commitment to web standards.</p>

<blockquote cite="http://wordpress.org/about/features/"><p><span style="font-weight:bold;">Key Features</span><br /><br />
Full standards compliance --- We have gone to great lengths to make sure every bit of WordPress generated code is in full compliance with the standards of the W3C. This is important not only for interoperability with today's browser but also for forward compatibility with the tools of the next generation. Your web site is a beautiful thing, and you should demand nothing less.</p></blockquote>

<p><cite><a href="http://wordpress.org/about/features/">WordPress About page</a></cite></p>

<p>So WordPress endevours to display valid code at every step. Then there are themes. Any theme designer that's worth anything will make sure their themes are valid <abbr title="eXtensible Hyper Text Markup Language">(X)HTML</abbr> and cross browser compatible to fit in with the ideology above.</p>

<p>So how do you stop your theme from falling apart, causing hundreds of errors in a validator and becoming harder and harder to look after? I have noticed a few common mistakes in the (X)HTML of many blogs that I have visited, so here are a few tips on how to stay valid.</p>

<h3>5 Tips And What Might Happen If You Don't Follow Them</h3>

<dl>
<dt>Add <code class="inline">alt</code> attributes to all your images.</dt>
<dd>Whether it's an image in a post or a button on your sidebar, you need to <a href="http://www.456bereastreet.com/archive/200412/the_alt_and_title_attributes/">include the alternative text</a>. Without it, your blog is invalid and users who can't view images won't know what was supposed to be seen. The <a href="http://www.problogger.net/archives/2005/03/12/formatting-images-for-seo/"><code class="inline">alt</code> attribute is also useful as a bit of extra search engine optimisation</a>, if your <code class="inline">alt</code> attribute describes the image and the image is relevant to your post, then there are more keywords available for the search engine bots to feed on.</dd>
<dd>Adding the alt attribute:
<pre><code>&lt;img src="image.gif"
  <strong>alt="Short description of image"</strong> /&gt;</code></pre>
</dd>
<dt>Close all your elements.</dt>
<dd>In <abbr title="Hyper Text Markup Language">HTML</abbr> it was OK to write paragraphs as follows:<pre><code>
&lt;p&gt;Some text here in the first paragraph...
&lt;p&gt;Second paragraph here...
</code></pre> But in (X)HTML this no longer works, you need the all important &lt;/p&gt; at the end of every paragraph (or the &lt;/li&gt; after list items, or &lt;/ul&gt; after lists, the list goes on). Not only will sticking to this make your code clearer to read, but <a href="http://snook.ca/archives/javascript/close_your_tags/">not closing elements properly can mess up any javascript</a> on the page too! So those paragraphs above should look like this:<pre><code>
&lt;p&gt;Some text here in the first paragraph...<strong>&lt;/p&gt;</strong>
&lt;p&gt;Second paragraph here...<strong>&lt;/p&gt;</strong>
</code></pre></dd>
<dt>Self close those single elements.</dt>
<dd>It's all very well closing paragraph and list elements, but you can't forget line breaks (<code class="inline">&lt;br /&gt;</code>), images (<code class="inline">&lt;img src="image.gif" alt="example" /&gt;</code>), links (<code class="inline">&lt;link rel="stylesheet" type="text/css" href="style.css" /&gt;</code>).<br />They all have one thing in common, the trailing <strong><code class="inline">/&gt;</code></strong>. Make sure you include it too.</dd>
<dt>Make your lists behave.</dt>
<dd>WordPress uses lists <em>a lot</em>! Most sidebars are unordered list after unordered list, for the semantic and accessibility factors they provide. All too often this can be spoiled by an out of place paragraph or div or even another list. For example:<pre><code>
&lt;ul&gt;
&lt;p&gt;Out of place paragraph.&lt;/p&gt;
&lt;li&gt;The real list&lt;/li&gt;
&lt;/ul&gt;
</code></pre>Just rememeber, whenever you are between an <strong><code class="inline">&lt;ul&gt;</code></strong> and an <strong><code class="inline">&lt;/ul&gt;</code></strong> you must also be between a <strong><code class="inline">&lt;li&gt;</code></strong> and a <strong><code class="inline">&lt;/li&gt;</code></strong>.</dd>
<dt>Embed videos properly.</dt>
<dd>I'm not one for video blogging, or even dropping in the occasional YouTube video, but many bloggers do and embedding flash content is hardly ever done correctly. For a start the <code class="inline">&lt;embed&gt;</code> element has never been supported by the W3C, it was made up by Netscape in the days of proprietary browser HTML. The way to do it is using the <code class="inline">&lt;object&gt;</code> element. I'm no pro, but there are two articles on <a href="http://www.alistapart.com/articles/flashsatay/">embedding</a> <a href="http://www.alistapart.com/articles/flashembedcagematch/">flash</a> at <a href="http://www.alistapart.com">A List Apart</a> that clear things up.</dd>
</dl>

<p>So there you have it, 5 things you can watch out for to keep your blog posts and your theme valid. While they seem harmless now, when browsers move on the standards will stay the same and the valid and well constructed sites will last.</p>

<p>If there is anyway I can help and point out where your theme could be fixed up, please let me know and if there are any other tips you can give for keeping a site valid, please do share.</p>

<p><ins><strong>Update</strong>: Please check out my next post for an <a href="http://www.unintentionallyblank.co.uk/2007/05/11/the-easiest-way-to-check-your-sites-validity/">easy and quick way to check whether your pages are valid</a>.</ins></p>

<p>This post is part of the <a href="http://www.problogger.net/archives/2007/05/07/top-5-group-writing-project/">ProBlogger group writing project</a>. If you have written a top five post, I look forward to reading yours too.</p>
