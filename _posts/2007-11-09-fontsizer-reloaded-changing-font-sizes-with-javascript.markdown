---
layout: post
title: FontSizer Reloaded - Changing Font Sizes With JavaScript
wordpress_id: 166
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/09/fontsizer-reloaded-changing-font-sizes-with-javascript/
date: 2007-11-09 00:31:35 +00:00
---
<p><ins>I broke this script and have fixed it! Please read about it and download the script from <a href="http://www.unintentionallyblank.co.uk/2008/06/23/javascript-dont-try-to-be-too-clever/" title="A correction to the font sizing script">this post</a>.</ins></p>

<p>A long time ago I wrote <a href="http://www.unintentionallyblank.co.uk/2006/08/02/fontsizing/">a script that changes font sizes</a>. In the year since, I have learned a lot about JavaScript and accessibility and looking over the code I wrote I was ashamed! I will dissect the mistakes I made in another post, but for now I have re-written and vastly improved the script.</p>

<h3>Improved Functionality, Improved Accessibility</h3>

<p>The script now does everything for you without you having to change your markup, so it degrades nicely when JavaScript isn't available and it uses (mostly) standards based JavaScript (but don't get me started on Internet Explorer support for <code class="inline">setAttribute</code>).</p>

<p>Once the <abbr title="Document Object Model">DOM</abbr> has loaded the script will check to see if the font has already been set by trying to read a cookie (<a href="http://www.quirksmode.org/js/cookies.html">cookie script was originally from Quirksmode</a>). If the cookie is found then the font size of the body element is set to the previous value. If no cookie is found then the script creates an element and measures the height of it to work out the current font size (thanks to <a href="http://www.alistapart.com/articles/fontresizing">a script on detecting font resizing at A List Apart</a>) and sets that as the cookie. It then adds three links to the document, appending them to an element of your choice. The three links increase, decrease and reset the font size, saving the changes to the cookie.</p>

<h3>How To Use It</h3>

<p>Now all you need to do to use the fontSizer is:</p>

<ol>
<li><a href="http://test.unintentionallyblank.co.uk/fontSizer.js">Download the script</a> (<a href="#update">there is an updated version with class names below</a>)</li>
<li>Change the string <var>"fontControls"</var> at the very end of the script to the element you want the font sizing links appended to.</li>
<li>Upload the script to your server</li>
<li>Include the following line in the <code class="inline">&lt;head&gt;</code> of your document:<br />
<pre><code>&lt;script type="text/javascript" src="fontSizer.js"&gt;
&lt;/script&gt;</code></pre></li>
</ol>

<p>When you visit the page you did this on, you should find that three links appear: A+, R and A- (they're not pretty, but customisation is left as an exercise*). On clicking A+ the font size of the whole document will increase, clicking A- will decrease the font size and R will reset it to the original size. The script has been tested and works in the following browsers:</p>

<ul>
<li>Internet Explorer 5.5, 6 and 7</li>
<li>Firefox 2</li>
<li>Opera 9</li>
<li>Safari 2</li>
<li>Camino 1.5</li>
</ul>

<p>I have also provided <a href="http://test.unintentionallyblank.co.uk/fontsizer.html">a (very simple) example</a>. So, if you want to add an unobtrusive, accessible way of increasing your website's font size, please <a href="http://test.unintentionallyblank.co.uk/fontSizer2-2.js">download the fontSizer script</a> and use it!</p>

<p>If there are any problems, please <a href="/contact/">let me know</a> and I will do my best to help you out.</p>

<p id="update"><ins>As requested in the comments, I have updated the fontSizer to include class names for styling the links. The "A+", "R" and "A-" will now come with the classes "increaseSize", "resetSize" and "decreaseSize" respectively. If you want to change them, just have a look into the source code and you should see where they are set. <a href="http://test.unintentionallyblank.co.uk/fontSizer2-2.js">The new version is available to download now</a>.</ins></p>

<p><small>* I have always wanted to say that!</small></p>
