---
layout: post
title: IE6 Doesn't Hide When Overflow Is Hidden
wordpress_id: 194
wordpress_url: http://www.unintentionallyblank.co.uk/2008/02/12/ie6-doesnt-hide-when-overflow-is-hidden/
date: 2008-02-12 22:54:42 +00:00
---
<p>A little <abbr title="Cascading Style Sheets">CSS</abbr> bug that affected me twice recently. I had to create a news ticker (so 1990s, but not my design) and an image slider, both which did the same thing; moving information from one side of the screen to the other. The important part was, at some point the news or the images would disappear, seemngly sliding underneath the next part of the page. Of course, this worked in all browsers but every developer's favourite, Internet Explorer 6. Let me explain why this was happened and what I did to fix it.</p>

<h3>The Problem: Position Relative</h3>

<p>In order to create the effect of moving both the news ticker and the images, I set up something like the following:</p>
<pre><code>&lt;div id="slide_frame"&gt;
  &lt;ul&gt;
    &lt;li&gt;Item one&lt;/li&gt;
    &lt;li&gt;Item two&lt;/li&gt;
    &lt;li&gt;Item three&lt;/li&gt;
    &lt;li&gt;Item four&lt;/li&gt;
    &lt;li&gt;Item five&lt;/li&gt;
  &lt;/ul&gt;
&lt;/div&gt;</code></pre>

<p>With the following CSS:</p>
<pre><code>#slide_frame { width:300px; }
#slide_frame ul {
  list-style-type:none; position:relative; width:600px;
  }
#slide_frame li { float:left; padding:0 5px; }</code></pre>

<p>The sliding was done with JavaScript, jQuery, which I am falling in love with, as it happens, and the result was fine in all browsers but IE6 where both the news ticker and the image slider remained visible at all times.</p>

<p>The issue, it seems, comes down to the <code class="inline">&lt;ul&gt;</code> being positioned relatively, which had to be done, so that the JavaScript could move it about. Removing the position hid the out of shot part of the list but meant it wouldn't move anywhere.</p>

<h3>The Solution: Position Relative</h3>

<p>Thankfully, this turned out to be an easy fix! In order to make IE6 behave all you need to do is apply <code class="inline">position:relative</code> to the containing <code class="inline">&lt;div&gt;</code> as well. Don't go around playing with z-indexes like I did for half an hour anyway!</p>

<p>I have provided <a href="http://test.unintentionallyblank.co.uk/hidden.html">an example of the problem</a>, with the fix to show what should be happening. Interesting point for those of you with many, many versions of Internet Explorer at your disposal, IE5 and 5.5 are not affected by this issue.</p>

<p>So, don't get caught out by hidden overflow and relative positions again, just position your container relatively too!</p>
