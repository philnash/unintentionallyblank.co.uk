---
layout: post
title: IF Internet Explorer THEN Do Something Else (A How To...)
wordpress_id: 32
wordpress_url: http://www.unintentionallyblank.co.uk/2006/09/19/if-internet-explorer-then-do-something-else-a-how-to/
date: 2006-09-19 13:23:16 +01:00
---
<p>Thanks to the magic of <a href="http://www.google.com/analytics">Google Analytics</a> I have discovered that a good number of this blog's visitors reach here with searches to do with Internet Explorer's conditional comments. This is due to my post, a month back, extolling the use of <a href="http://www.unintentionallyblank.co.uk/2006/08/14/if-internet-explorer-then-do-something-else/">conditional comments instead of <abbr title="Cascading Style Sheets">CSS</abbr> hacks</a>. More recently I considered that if someone was searching for information on conditional comments then they were unlikely to find interest in an article merely telling them they should use them. Then along came the latest <a href="http://www.problogger.net/archives/2006/09/18/problogger-group-writing-project-how-to/">ProBlogger Group Writing Project - How To...</a> and it all made sense. So here is how you can improve your code and drop those worthless CSS hacks; How to use conditional comments - the practical version.</p>
<h3>Conditional Whats?</h3>
<p>I'll start at the beginning (seems like a logical place to start): over the years of different browsers coming and going there have been ways of sniffing out what your users are visiting your site with, through either client or server side scripts. When Microsoft  launched <abbr title="Internet Explorer">IE</abbr>5 they included a method of checking which version of IE was viewing a site using <abbr title="Hyper Text Markup Language">HTML</abbr> comments. This has continued to appear in releases of IE and now you can target any version of IE from 5 to 7 using these comments.</p>
<h3>So, How Do They Work?</h3>
<p>The basic syntax for conditional comments is as follows:<br>
Normal comment: <code class="inline">&lt;!&#45;&#45; Comment text &#45;&#45;&gt;</code><br>
Conditional comment: <code class="inline">&lt;!&#45;&#45;[If <var>expression</var>]&gt; HTML &lt;![endif]&#45;&#45;&gt;</code><br>(<a href="http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp">Source</a>)</p>
<p>Note: Microsoft also provide a method of usng these conditional comments to serve content to browsers other than IE, but this uses invalid HTML, so I will display a fix later.</p>
<h3>The Expressions</h3>
<p>For a start, you can target any IE past version 5 with the conditional comment <code class="inline">&lt;!&#45;&#45;[If IE]&gt; HTML &lt;![endif]&#45;&#45;&gt;</code></p>
<p>Furthermore, you can target <em>any</em> version of IE since version 5. Practically there are 4 sufficiently different versions of IE to consider though: 5, 5.5, 6 and 7. To target any one of these on there own is quite simple, add the version number to the expression above, e.g. <code class="inline">&lt;!&#45;&#45;[If IE 6]&gt; HTML &lt;![endif]&#45;&#45;&gt;</code> will target IE6 only.</p>
<p>The case of versions 5 and 5.5 is slightly different, however. The conditional comment <code class="inline">&lt;!&#45;&#45;[If IE 5]&gt; HTML &lt;![endif]&#45;&#45;&gt;</code> will target both IE5 and IE5.5. To target IE5 on it's own you need to use <code class="inline">[If IE 5.0]</code> and to target IE5.5 on it's own, you need <code class="inline">[If IE 5.5]</code></p>
<h3>More Complex</h3>
<p>If targetting one single version, or any version IE is not good enough for you, then you need to know about the other operators allowed.</p>
<dl>
<dt>! (negation)</dt>
<dd>Use the negation to select all versions except the one specified, e.g.
<code class="inline">[If !IE 6]</code> will select IE 5, 5.5 and 7.</dd>
<dt>lt (less than)</dt>
<dd>Select any versions less than the one specified, e.g. <code class="inline">[If lt IE 6]</code> will select IE 5 and 5.5.</dd>
<dt>lte (less than or equal)</dt>
<dd>e.g. <code class="inline">[If lte IE 6]</code> will select IE 5, 5.5 and 6.</dd>
<dt>gt (greater than)</dt>
<dd>Select any versions greater than the one specified, e.g. <code class="inline">[If gt IE 6]</code> will select IE 7 (and any later versions that may appear).</dd>
<dt>gte (greater than or equal)</dt>
<dd>e.g. <code class="inline">[If gte IE 6]</code> will select IE 6 and 7 (and later).</dd>
</dl>
<p>Of course, negation can be used with any of the order relationships as well. To see how best to use all of these methods, Manfred Staudinger wrote a definitive piece at <a href="http://www.positioniseverything.net/articles/multiIE.html">Position Is Everything</a> (though the top half of the article is about running multiple versions of IE on one computer).</p>
<h3>Targetting Browsers Other Than IE</h3>
<p>As I mentioned above, Microsoft also provided a method of hiding content from IE too, but the HTML was not valid. The method was as such:<br>
<code class="inline">&lt;![If <var>expression</var>]&gt; HTML &lt;![endif]&gt;</code><br>
As you can see, the comment is not HTML and is therefore ignored by other browsers who will continue to parse the HTML within. You can also target versions of IE to read it as well, using expressions as above.</p>
<p>However, using invalid HTML is never something that should be encouraged, particularly as we move towards <abbr title="eXtensible Hyper Text Markup Langauge">XHTML</abbr> and serving webpages as well formed <abbr title="eXtensible Markup Language">XML</abbr> which will break if invalid structures are used. So thanks to <a href="http://listserver.dreamhost.com/pipermail/whatwg-whatwg.org/2005-April/003489.html">Lachlan Hunt</a> (and <a href="http://www.456bereastreet.com/archive/200511/valid_downlevelrevealed_conditional_comments/">Roger Johansson</a> for clearing it up somewhat) there is a method of hiding content from IE using valid HTML conditional comments and it looks like this:</p>
<pre><code>&lt;!&#45;&#45;[if !IE]&gt;&#45;&#45;&gt;
HTML
&lt;!&#45;&#45;&lt;![endif]&#45;&#45;&gt;</code></pre>
<h3>What To Do With Them?</h3>
<p>Are these conditional comments any use then? My favourite use of them is to stamp out hacks in my CSS files and just serve an additional CSS file to IE to fix any problems it has. You could always use them to display messages to users of IE only, maybe mentioning that they might want to get hold of Firefox. Just while thinking about that I actually removed an advert in my sidebar for Firefox, that is unless you are viewing with IE. Go on, have a look.</p>
<p>Has this article helped? I hope it has shed some light on safe detection of IE adding to it the way of targetting other browsers in a valid way. Also, if anyone has any other ideas for what to use conditional comments for, please let me know and I'll try to mention the best ones.</p>
