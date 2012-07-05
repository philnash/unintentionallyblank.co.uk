---
layout: post
title: IF Internet Explorer THEN Do Something Else
wordpress_id: 16
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/14/if-internet-explorer-then-do-something-else/
date: 2006-08-14 12:37:25 +01:00
---
<p>I have been working on my first job this week, hence my <a href="http://www.unintentionallyblank.co.uk/2006/08/10/how-not-to-blog/">lack of posting</a> recently. It has been quite an experience finally designing a site for someone else, but this is not really the issue on my mind.</p>
<h3>The Box Model Hack Strikes</h3>
<p>The design of the site that I was creating this week prompted me to think about support for <abbr title="Cascading Style Sheets">CSS</abbr> within <abbr title="Internet Explorer">IE</abbr> and the highly documented ways to work around it. I was using the CSS from the method for <a href="http://www.alistapart.com/articles/footers">sticking a footer to the bottom of a page</a> from A List Apart and noted the use of Tantek Ã‡elik's <a href="http://tantek.com/CSS/Examples/boxmodelhack.html">box model hack</a>. As I progressed with the design, I came to rest on a fixed width layout and deployed the box model hack again. By the time I came around to the third use of the hack I had almost forgotten what the first two were for and had to read the code carefully to work out what I was trying to achieve.</p>
<p>"This can't be right, this is my first project and I'm already confused," I thought. This reminded me of an article I had read over at <a href="http://www.thinkvitamin.com">Vitamin</a>. Dave Shea denounced the use of CSS hacks in his article <a href="http://www.thinkvitamin.com/features/css/stop-css-hacking">Stop Hacking, Or Be Stopped</a> encouraging the use of Microsoft's proprietary <a href="http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp">conditional comments</a>. IE7 is coming, hacks will stop working and old and new versions of Internet Explorer's mistakes will surface when users make the switch to IE7 he said, and I agree, but my perspective on this matter is from another step back.</p>
<h3>Clear Code, Clear Mind</h3>
<p>Why are CSS designers using code that looks like this:</p>
<pre><code>div.content { <br>
  width:400px;<br>
  voice-family: "\"}\""; <br>
  voice-family:inherit;<br>
  width:300px;<br>
}</code></pre>
<p>followed by the cutely named, "Be nice to Opera 5" hack:</p>
<pre><code>html>body .content {<br>
  width:300px;<br>
} </code></pre>
<p>This is hardly elegant, it is confusing and bloats the code. Plus, if you design a site using hacks of this variety without commenting it heavily and someone else comes along to take over the site, they won't know where to begin. In this example we are targetting the broken box model of IE5.X, so why not use the following snippet in your <abbr title="HyperText Markup Language">HTML</abbr>:</p>
<pre><code>&lt;!--[If IE 5]&gt;<br>
&lt;style&gt;<br>
div.content { width:400px; }<br>
&lt;/style&gt;<br>
&lt;![endif]&#45;&#45;&gt;</code></pre>
<p>leaving only the line:</p>
<pre><code>div.content { width:300px; }</code></pre>
<p>in your CSS for all other standards compliant browsers to see? You could even put the IE specific code in another stylesheet that only IE users would download, rather than taking up space in your HTML. I'm sure no-one minds giving IE users a little more to download.</p>
<p>So conditional comments target the exact IE version that we need to fix, or any range of them, they won't be disappearing, like some of the well used hacks, and they even decrease the size of your css file (at least to those who have made the jump to a standards compliant browser). Finally, they are easy to understand and won't confuse anyone in the future who may take over development of the site or design in question.</p>
<h3>Other Uses</h3>
<p>Recently an article on <a href="http://idealog.us/2006/08/microsoft_drops.html">IE7s non compliance with standards</a> caught my eye. The author was so taken aback by the lack of compliance with the <abbr title="World Wide Web Consortium">W3C</abbr>'s recommended standards that it prompted them to ban IE users from their site <a href="http://www.newscloud.com">NewsCloud</a>. The resulting uproar caused them to open the site to IE users, but display a message to IE users urging them to download Mozilla's Firefox instead. A great idea, but the <a href="http://www.idealog.us/2006/08/php_browser_det.html">implementation was through <abbr title="Hypertext Preprocessor">PHP</abbr></a>. It seems to me that formulating PHP to do the job was slightly wasted when conditional comments are built especially by Microsoft for this purpose (alright, they weren't made to encourage users to download other browsers, but what an excellent use it is)! All you need is:</p>
<pre><code>&lt;!--[If IE]&gt;<br>
Message to IE users<br>
&lt;![endif]&#45;&#45;&gt;</code></pre>
<h3>Final Thoughts</h3>
<p>I don't know why Microsoft decided to implement conditional comments, but they have their uses in clearing up after the IE programming teams mistakes. According to this <a href="http://www.webdevout.net/browser_support_summary.php?uas=IE6-IE7-FX1_5-OP8-OP9">study of standards support in different browsers</a>, IE 6 only supports 51% of the CSS 2.1 standard  and IE 7 a mere 4% more. However Firefox doesn't cover it all and none of the browsers are anywhere near support for CSS 3. I would like to urge the W3C and other browser teams to seriously consider adding conditional comments to their projects so that the need to hack CSS is diminished and the power to develop cross browser sites is given back to the designer.</p>
