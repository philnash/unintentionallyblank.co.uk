---
layout: post
title: "Making MyBlogLog Pretty: How To Style The Recent Readers Widget"
wordpress_id: 84
wordpress_url: http://www.unintentionallyblank.co.uk/2007/03/06/making-mybloglog-pretty-how-to-style-the-recent-readers-widget/
date: 2007-03-06 01:22:43 +00:00
---
<p><img src="http://www.unintentionallyblank.co.uk/wp-content/uploads/2007/03/mybloglog.gif" alt="MyBlogLog" class="alignleft" /> I like <a href="http://www.mybloglog.com">MyBlogLog</a>, it's come under some stress recently, which I'm not going to bring up, but I like it. I particularly like the recent readers widget, I installed mine as soon as I could after signing up. There is only one thing I don't like about it, the default widget is <em>ugly</em>. That's why I spent a bit of time with the <abbr title="Cascading Style Sheets">CSS</abbr> and made mine fit in with the rest of my sidebar. This is the first part of two on how to make your widget better looking.</p>

<h3>The Structure</h3>

<p>The MyBlogLog widget is a table, not the way I would do it (sounds like an ordered list of your recent readers to me), but it's what we have to deal with. Here is a sample of the code, taken from the widget page:</p>

<pre><code>
&lt;table cellspacing='0' cellpadding='0' id='MBL_COMM'&gt;
 &lt;tr&gt;&lt;td colspan='2' class='mbl_h'&gt;Recent Readers&lt;/td&gt;&lt;/tr&gt;
  &lt;tr id='tr1'&gt;
   &lt;td id='tdd11' class='mbl_img'&gt;&lt;img /&gt;&lt;/td&gt;
   &lt;td id='tdd21' class='mbl_mem'&gt;&lt;a href='#&gt;&lt;/a&gt;&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
</code></pre>

<p>Within the table there is a header row with your title in, then each row has one cell for the avatar and one for the link. Having experimented a bit with the table, the bottom two rows are dedicated to the link to your community and the link to MyBlogLog. There is also a class for the row that appears to non-members of MyBlogLog, if you want to style that any differently.</p>

<h3>The CSS</h3>

<p>In the next installment, I will give an example of the CSS you can use to style this widget. Right now I am going to give you all the information you need to have a go yourself. Listed below are all the classes you will need in order to style your very own MyBlogLog widget. I know the classes also incorporate the rest of the <abbr title="Hyper Text Markup Language">HTML</abbr> document, but in my experience you need it all in order to style the widget.</p>

<dl>
<dt><pre><code>body .widget_mybloglog</code></pre></dt>
<dd>This is the widget as a whole, normally used for the width of the widget.</dd>
<dt><pre><code>body table#MBL_COMM</code></pre></dt>
<dd>The main table for the widget, here you can set the width and the outside border.</dd>
<dt><pre><code>body table#MBL_COMM th.mbl_h</code></pre></dt>
<dd>The header row, containing "Recent Readers" or whatever you chose.</dd>
<dt><pre><code>body table#MBL_COMM td.mbl_img</code></pre></dt>
<dd>The cell containing the MyBlogLog avatar.</dd>
<dt><pre><code>body table#MBL_COMM td.mbl_mem</code></pre></dt>
<dd>The cell containing the MyBlogLog member's link, you can style extra hard by adding <code class="inline">a</code> or <code class="inline">a:hover</code> to the end of the line.</dd>
<dt><pre><code>body table#MBL_COMM td.mbl_join_img</code></pre></dt>
<dd>The cell containing the image that appears when non-members of MyBlogLog visit your site.</dd>
<dt><pre><code>body table#MBL_COMM td.mbl_join</code></pre></dt>
<dd>The text that appears for non-members of MyBlogLog, again, you can reference links as above.</dd>
<dt><pre><code>body table#MBL_COMM td.mbl_fo_hidden</code></pre></dt>
<dd>The last two rows of the table that display the text "View reader community" and "(provided by MyBlogLog)". You can style the links in these rows too.</dd>
</dl>

<h3>Coming Soon</h3>

<p>Now I have displayed all the CSS codes you need to style your widget, I would love to see what you can do. Tomorrow I will show you a couple of ideas I came up with, but everybody's blog and everybody's design is different. I hope to show you what you can achieve with the tools available, but would love to see what you can do too.</p>
