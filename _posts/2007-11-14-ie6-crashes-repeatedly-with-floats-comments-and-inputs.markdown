--- 
layout: post
title: IE6 Crashes Repeatedly With Floats, Comments And Inputs
wordpress_id: 169
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/14/ie6-crashes-repeatedly-with-floats-comments-and-inputs/
date: 2007-11-14 08:05:16 +00:00
---
<p>A weird Internet Explorer 6 bug hit me at work recently. One page on a client's site repeatedly crashed IE6. Not one of the usual <abbr title="Cascading Style Sheets">CSS</abbr> support bugs that can be solved with a bit of tweaking and reloading the page to see if it worked, every time I visited this particular page in IE6 the browser just bombed out.</p>

<p>An hour of headaches and starting up the decrepit browser over and over again lead me to the cause of the problem, a seemingly innocent <code class="inline">&lt;input type="button" /&gt;</code>. Comment out the input and the page loaded, leave it in and IE6 lost it. For the record, IE7 handled the page superbly. But having found the cause of the crashing to be an input, the problems weren't over, I couldn't just remove the button as it was necessary for saving the form on the page. More investigation was needed.</p>

<h3>The IE Duplicate Characters Bug</h3>

<p>After a while I decided to replace the input with text, to see whether that would have any adverse effects and it was the right thing to do! The text appeared twice on the page and I instantly searched for any documentation of duplicating text in IE6. <a href="http://www.positioniseverything.net/explorer/dup-characters.html">Position Is Everything came to the rescue with this explanation of the IE duplicate characters bug</a>. It turned out that a combination of floats and comments or hidden elements causes text to duplicate if it is in a particular spot. In my case, there was an input in that spot and rather than duplicating the input, the browser just gave up.</p>

<p>A bit of fiddling with comments and moving hidden content around finally left the page in a state to be viewed safely by IE6 again. Sometimes Internet Explorer amuses me, this just confused me for a long time, had I not replaced the input with text I could even still be pondering it. It goes to show that with a lot of time and a bit of luck, you can avoid (most) IE bugs and get your pages back in working order.</p>
