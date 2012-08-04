---
layout: post
title: The DOM again - A Style Sheet Switcher
wordpress_id: 17
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/17/the-dom-again-a-style-sheet-switcher/
date: 2006-08-17 18:03:59 +01:00
---
<p>A <a href="http://www.unintentionallyblank.co.uk/2006/08/10/how-not-to-blog/#comment-80">comment</a> a few days ago about the colours used on this site got me thinking. First of all I started considering what would be a nice colour to make my headings so that they were readable for everyone. Rather than stopping there and testing out some new colours, I kept thinking eventually deciding that a new design was the only way forward! Finally, thoughts of accessibillity crept into my head reminding me of Roger Johansson's <a href="http://www.456bereastreet.com/">high contrast layout</a> (originally suggested on <a href="http://www.alistapart.com/articles/lowvision/">A List Apart</a> by Joe Clark) and it all made sense.</p>
<blockquote><p>If I build a stylesheet switcher into my site then I can keep this design and serve up as many other ones as I like, improving accessibility and keeping the bright blueness of my headings.</p></blockquote>
<p>Of course, doing this would test and improve my scripting (my ultimate aim) so I got to work.</p>
<h3>Weapon of Choice: Javascript</h3>
<p>After enjoying a success with my <a href="http://www.unintentionallyblank.co.uk/2006/08/02/fontsizing/">font sizing script</a> I decided on attacking this problem with javascript too. I had seen stylesheet switchers before, but wanted to build one myself to my own specification. My requirements:</p>
<ul class="arrowlist">
  <li>List stylesheets in the head element using the link tag with rel="stylesheet" or rel="alternate stylesheet"</li>
  <li>Switch stylesheets without a page reload</li>
  <li>Persistant styling across the whole site</li>
  <li>Use a dropdown box to select styles</li>
  <li>Populate the dropdown box with stylesheet names from the title attribute of the link tag</li>
  <li>Graceful degradation in browsers without script</li>
  <li>Future proof javascript</li>
</ul>
<h3>Task 1: Find The Stylesheets</h3>
<p>Since I was working with stylesheets defined using the link tag I needed to get all the link tags. Similar to my last <abbr title="Document Object Model">DOM</abbr> script, I used the function getElementsByTagName like so:</p>
<pre><code>var links = document.getElementsByTagName("link");</code></pre>
<p>However, there are more link tags in my header than just stylesheets, so I had to filter out the others.</p>
<pre><code>var count = 0;
var stylesheetArray = new Array();
for (var i=0; i&lt;links.length; i++) {
  type = links[i].getAttribute("type");
 if (type=="text/css") {
   stylesheetArray[count] = links[i];
    count++;
    }</code></pre>
<p>The above code iterates through our array of link tags checking out the type attribute. If it matches "type/css" then it is a stylesheet and it is added to the array stylesheetArray as a counter keeps the indexing under tabs.</p>
<h3>Task 2: Change the Stylesheet</h3>
<p>Now I have an array with all the link tags containing stylesheet references, all I need to do is change which one is being used to style my content. A stylesheet can be deactivated by calling <code class="inline">stylesheet.disabled = true;</code> therefore setting disabled to false would activate a stylesheet. My method was to get the stylesheets using the function above (named getStyleSheets()) and iterate through them, setting disabled to true unless the title matched the parameter handed to the function.</p>
<pre><code>function setStyleSheet(title) {
var stylesheets = getStyleSheets();
for (var i=0; i&lt;stylesheets.length; i++) {
 stylesheets[i].disabled = true;
 if (stylesheets[i].getAttribute("title") &raquo;<br>
                                       == title) {
    stylesheets[i].disabled = false;
  }
}
}</code></pre>
<h3>Task 3: Persistent Styling</h3>
<p>Of course, setting a different stylesheet for one page is all very well, but to experience a chosen style throughout the site we have to employ the use of cookies. As in my font sizing script, I am going to use the javascript cookie functions supplied by <a href="http://www.quirksmode.org/js/cookies.html">Quirksmode</a>. Initially, we need to set a cookie everytime a user changes the stylesheet. This is achieved by adding the line <code class="inline">createCookie('style',title,365);</code> at the end of the function setStyleSheet(title) above. The cookie will be called style and it will save the title of the preferred stylesheet.</p>
<p>Now we need to read the cookie and find out what our users preferred stylesheet is, and serve up the default stylesheet if no cookie is found. <pre><code>if (readCookie('style')) { title=readCookie('style'); }</code></pre> will find out if a cookie exists and record the title. If no cookie was found we run the following code:</p>
<pre><code>else {
 var stylesheets = getStyleSheets();
 for (var i=0; i&lt;stylesheets.length; i++) {
   if (stylesheets[i].getAttribute("rel")&raquo;<br>
                .indexOf('alt')== -1) { title = &raquo;<br>
                stylesheets[i].getAttribute("title"); }</code></pre>
<p>which iterates through our array of stylesheets finding out which ones use rel="alternate stylesheet" and which one is the default stylesheet using rel="stylesheet". The default stylesheet's title is recorded. Finally we set up an event so that the stylesheet is set when we load up the page.</p>
<pre><code>window.onload = function() {
  var title = getPreferredStyleSheet();
 setStyleSheet(title);
}</code></pre>
<h3>The Script So Far</h3>
<p><a href="http://test.unintentionallyblank.co.uk/switcher.html">See the script in action.</a></p>
<p>Now, to switch stylesheets all you have to do is add your stylesheets to the head element of your page (making sure you declare type="text/css", rel="stylesheet" or rel="alternate stylesheet" and give them titles). You can <a href="http://test.unintentionallyblank.co.uk/switcherpart1.js">download the script</a> then upload it to your own server and add <code class="inline">&lt;script type="text/javascript" &raquo;<br> language="javascript" src="switcherpart1.js"&gt;&lt;/script&gt;</code> to the head too. Then all you need to do is add links to the function to swap the stylesheet.</p>
<p>If you have two stylesheets with titles default and other respectively, then you can change the stylesheets about using the following links:</p>
<pre><code>&lt;a href="javascript:setStyleSheet('default')"&gt;Default&lt;/a&gt;<br>
&lt;a href="javascript:setStyleSheet('other')"&gt;Other&lt;/a&gt;</code></pre>
<h3>More To Come</h3>
<p>That's all for today, enjoy swapping your stylesheets around with the code so far, I will tackle the remaining requirements (automatically populated drop down box and graceful degradation) in another post.</p>
<p><ins>Update: see the remaining tasks finished off in <a href="http://www.unintentionallyblank.co.uk/2006/08/18/stylesheet-switcher-part-2/">Stylesheet Switcher part 2</a>.</ins></p>
