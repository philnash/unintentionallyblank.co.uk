---
layout: post
title: Cross Browser Background Transparency With CSS
wordpress_id: 121
wordpress_url: http://www.unintentionallyblank.co.uk/2007/05/07/cross-browser-background-transparency-with-css/
date: 2007-05-07 12:35:37 +01:00
---
<p>Transparency can add something beautiful to a design. <a href="http://randaclay.com">Randa Clay</a> thought so whilst designing <a href="http://randaclay.com/archives/help-out-a-newbie-wordpress-theme-designer">her first WordPress theme</a> and I have been considering something very similar for a design that has been going round in my head recently. Randa's problem was that making the background of a <code class="inline">&lt;div&gt;</code> transparent so that the page background could be seen through it caused everything within the <code class="inline">&lt;div&gt;</code> to be transparent to the same degree, including text and images.</p>

<p>Transparent post level images aren't desirable, so I set about finding out how best to apply the transparency to the <code class="inline">&lt;div&gt;</code>. Here are my results:</p>

<h3><abbr title="Cascading Style Sheets">CSS</abbr>3 Properties</h3>

<p>CSS3 provides us with the <a href="http://www.w3.org/TR/css3-color/#transparency">opacity property</a> that lets us declare the transparency of an element.</p>

<p>Note: This article uses CSS3 properties and some proprietary browser stuff too. This is unlikely to be valid, but I'll try my best! Most importantly the results will be supported across the  major browsers and will be (hopefully) futureproof.</p>

<p>What we like to call modern browsers (Firefox, Opera, Safari) support this opacity property. To make a <code class="inline">&lt;div&gt;</code> 50% transparent you can use the following code:</p>

<pre><code>div { opacity:0.5; }</code></pre>

<p>Setting opacity to 1 makes an element entirely opaque and setting it to 0 makes it entirely transparent.</p>

<h3>Transparent .pngs</h3>

<p>Perhaps using entirely CSS based properties to create the transparency is a bit much, especially since CSS3 is not yet a recommended document. We could always use a transparent .png to provide our background. This is a safe and valid method, but as we all know, Internet Explorer 6 does not support transparent .pngs.</p>

<h3>Proprietary Code</h3>

<p>IE6 does provide us with some proprietary code to produce the same opacity results as the CSS property. The following code makes a <code class="inline">&lt;div&gt;</code> 50% transparent in IE6:</p>

<pre><code>div {
 filter:alpha(opacity=50);
 height:1%;
  }</code></pre>

<p>The <code class="inline">height:1%;</code> is used to give the <code class="inline">&lt;div&gt;</code> "layout" (thanks to <a href="http://jszen.blogspot.com/2005/04/ie6-opacity-filter-caveat.html">The Strange Zen Of JavaScript</a>).</p>

<p>The benefit of this code is that, unlike the CSS property opacity, setting the child elements of the transparent <code class="inline">&lt;div&gt;</code> to be fully opaque does work. You can do this as follows:</p>

<pre><code>div * {
  filter:alpha(opacity=100);
  postion:relative;
 }</code></pre>

<p>Thanks to <a href="http://www.domedia.org/oveklykken/css-transparency.php">Ove Klykken</a>.</p>

<h3>Many Methods -- None Of Which Work</h3>

<p>So opacity doesn't behave exactly as we want it, doesn't work in IE7 and, like transparent .pngs won't work in IE6. IE filters only work in IE. I decided to build together elements that worked the way I wanted them to and that will cover all the important browsers.</p>

<p>To keep the use of proprietary, invalid code to a minimum I decided to use <a href="http://www.unintentionallyblank.co.uk/2006/09/19/if-internet-explorer-then-do-something-else-a-how-to/">conditional comments</a> to direct the code to IE6 only. IE7 supports transparent .pngs and using this method is both valid and doesn't cause child elements to be transparent too. Mixing them both together produces the following:</p>

<pre><code>div {
  background:transparent url(transparent.png);
  }</code></pre>

<p>and for IE6</p>

<pre><code>&lt;!&#45;&#45;[If IE 6]&gt;
&lt;style type="text/css"&gt;
#transparent {
 background:#fff none;
 filter:alpha(opacity=50);
 height:1%;
  }</code></pre>

<pre><code>#transparent * {
  filter:alpha(opacity=100);
  position:relative;
  }</code></pre>

<pre><code>&lt;/style&gt;
&lt;![endif]&#45;&#45;&gt;</code></pre>

<h3>The Finished Product</h3>

<p>So to use the method, all you need is to create a 1x1 pixel transparent .png which can be tiled and add the code above. Please see a few <a href="http://test.unintentionallyblank.co.uk/transparent.html">examples</a> a came up with to demonstrate the different methods and their failings. Example 4 uses the above code and has been tested in IE6 and 7 (it doesn't work in IE5, but who uses that any more?), Firefox 1.5 and 2.0 and Opera 9.2. I have to assume it works in Safari, but I just can't check, let me know if you can.</p>

<p>I hope this helps out, let me know if you find somewhere to use it!</p>
