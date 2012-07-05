---
layout: post
title: How To Size Your Font Based On Your Reader's Screen Resolution
wordpress_id: 67
wordpress_url: http://www.unintentionallyblank.co.uk/2007/02/12/how-to-size-your-font-based-on-your-readers-screen-resolution/
date: 2007-02-12 18:32:32 +00:00
---
<p><img src='http://www.unintentionallyblank.co.uk/wp-content/uploads/2007/02/fontsizer.gif' alt='Change The Size Of Your Fonts With Javascript' class="alignleft" />Through the magic of <a href="http://www.mybloglog.com">MyBlogLog</a> statistics, I found someone trying to use one of my javascript codes. It is always touching to find out that someone has found your work useful and it spurs you on to better things.</p>
<p>In this case, the user wanted something slightly different out of the code than what I had provided. <a href="http://www.unintentionallyblank.co.uk/2006/08/02/fontsizing/">Changing a page's font size</a> was the code in question here, but rather than changing it using the link method I had provided, they wanted to display a different font size based on a reader's screen resolution. This is an inspired idea, I thought, as monitors get bigger and resolutions get smaller and text on screen disappears. This is why I use 1024x768 otherwise I wouldn't be able to read anything!</p>

<h3>Screen.width</h3>

<p>Thankfully, javascript provides us with a very easy way of discovering the screen resolution, <code class="inline">screen.width</code> gives us the width and <code class="inline">screen.height</code> unsurprisingly gives out the height of the user's screen. For the purposes of this example, I am going to use the height as my guide to the full resolution. Also, for simplicity I will only be maing one distinction between sizes, one size for a width of 800 pixels or less and another font size for greater than 800 pixels. I will also be modifying my <a href="http://www.unintentionallyblank.co.uk/2006/08/02/fontsizing/">previous example of a font sizing script</a>.</p>

<h3>Onto The Code</h3>

<p>As we are changing the font size as soon as possible, we need to modify the <code class="inline">init()</code> function I wrote before as it runs as soon as the body of the site has loaded. The code at the moment is:</p>
<pre><code>
function init() {
if(readCookie('fs')) { var si = parseInt(readCookie('fs')); }
if (!document.getElementsByTagName) {return false;}
var sizes = new Array('0.9', '1', '1.1', '1.2', '1.3');
setFontByTag('div', sizes[si]+'em');
}</code></pre>

<p>Currently it checks if we have stored a previous font size in a cookie and loads that font size, we need it to check first for the cookie (as we will be setting one rather than checking the screen size each time) then the screen size. Here is the modified code:</p>
<pre><code>
function init() {
var sizes = new Array('0.9', '1', '1.1', '1.2', '1.3');
if(readCookie('fs')) {
var si = parseInt(readCookie('fs'));
if (!document.getElementsByTagName) {return false;}
setFontByTag('body', sizes[si]+'em');
}
else if (screen.width > 800) {
var si = 4;
setFontByTag('body',sizes[si]+'em');
createCookie('fs',si,30);
}
}</code></pre>

<p>Now the first if statement carries out the function we already had and it starts to get interesting during the else if section. If no cookie is set then we check if the screen width is greater than 800. if it is, we use the pre-written setFontByTag function to set the font size of the body element to 1.3em (see the array of sizes declared at the top). You can set it to whatever you like by editing the array and/or the index of the array set in the variable "si".</p>

<p>You can now use the script by downloading <a href='http://www.unintentionallyblank.co.uk/wp-content/uploads/2007/02/fontsizer2.js' title='Fontsizer version 2'>Fontsizer version 2</a>. The instructions for use are in the script. Finally, here is a <a href="http://test.unintentionallyblank.co.uk/resolutiontest.html">working example</a> just to make sure it works!</p>

<p>Let me know if there are any problems with the code and please tell me if this helps you out!</p>
