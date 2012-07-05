---
layout: post
title: JavaScript - Don't Try To Be Too Clever
wordpress_id: 214
wordpress_url: http://www.unintentionallyblank.co.uk/?p=214
date: 2008-06-23 21:23:09 +01:00
---
<p>You know who's waiting to spoil the day, Internet Explorer. A couple of people reported that my <a href="http://www.unintentionallyblank.co.uk/2007/11/09/fontsizer-reloaded-changing-font-sizes-with-javascript/">font sizing script</a> was not working in IE7 or 6 and I've finally got around to checking out why. When I rewrote the code to add class names to each of the sizing elements, I tweaked a couple of things to make it work better, make the file size smaller and make it more standards compliant code. My mistake? Standards compliance.</p>

<p><a href="http://www.quirksmode.org/bugreports/archives/2005/03/setAttribute_does_not_work_in_IE_when_used_with_th.html">Internet Explorer does not understand <code class="inline">setAttribute</code> when used with style.</a> There are a few lines in which I changed from using <code class="inline">element.style.size = xx</code> to <code class="inline">element.setAttribute('style','size:xx');</code> and this broke the script in IE. Don't try to be too clever, and more importantly for me, check whenever you make any change, no matter how small it may be.</p>

<p>Thank you to those who pointed it out, the issue is solved and the script has been tested in Firefox 2, Safari 3, Opera 9.5, IE6 and 7 and it works. Please <a href="http://test.unintentionallyblank.co.uk/fontSizer2-2.js">download it and use it</a> and check out the <a href="http://test.unintentionallyblank.co.uk/fontsizer.html">working demo with the updated script</a>.</p>

<h3>Using the Script</h3>

<p>To use the script, download it using the link above and save with a suitable name (fontsizer.js is a good example). Upload it to your site and add the following code to the <code class="inline">&lt;head&gt;</code> of the page you want to use it on:</p>
<pre><code>&lt;script type="text/javascript" src="fontsizer.js"&gt;
&lt;/script&gt;</code></pre>

<p>Then you need to include an element, a <code class="inline">&lt;div&gt;</code> for example, with the id <code class="inline">fontControls</code>. The script uses that element to append the font size controllers to when the page loads.</p>

<p>Then, load up your page and it should work. If you need any more help, please <a href="http://www.unintentionallyblank.co.uk/contact/">get in touch</a> and I will do my best to help you out.</p>
