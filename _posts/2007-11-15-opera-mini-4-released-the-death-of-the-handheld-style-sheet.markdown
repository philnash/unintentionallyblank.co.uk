---
layout: post
title: Opera Mini 4 Released & The Death Of The Handheld Style Sheet
wordpress_id: 168
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/15/opera-mini-4-released-the-death-of-the-handheld-style-sheet/
date: 2007-11-15 10:30:15 +00:00
---
<p>Firstly I'm excited. <a href="http://my.opera.com/operamini/blog/the-power-of-the-web-with-opera-mini-4">Opera Mini 4 was released last week</a>. I didn't use the beta as I was happy with Opera Mini 3, but now version 4 is fully operational I have upgrade (though I only just found out... it seems that no-one cares about Opera Mini when there's an iPhone being released). Secondly, I'm a little confused, Opera Mini 4, like the iPhone's Safari, no longer supports handheld style sheets.</p>

<h3>Quality Browsing On The Small Screen</h3>

<p>Opera Mini 4 brings a whole load of new functionality to the mobile web, it's available for most modern phones and renders full web pages (mostly) as the designer had intended. It allows for zooming in to pages to read the content and lines text up in screen width sized columns. It gives you a virtual mouse that you can scroll around the screen with and click links. <a href="http://dev.opera.com/articles/view/javascript-support-in-opera-mini-4/">JavaScript and <abbr title="Asynchronous JavaScript And XML">AJAX</abbr> support has also been improved</a>, which is good news for users of modern, JavaScript heavy sites. This is a great step for the mobile web, users will now be even better served when surfing from their mobile and site owners have less to do to make their site compatible with mobile platforms. If Safari on iPhone hadn't already done this, this would be big news, sadly, even though Opera Mini runs on most modern phones, excluding the iPhone of course, and can modernise the mobile web for many more users, it won't be.</p>

<h3>The Death Of The Handheld Style Sheet</h3>

<p>The handheld style sheet is one that can be served to mobile devices using media definitions in the link, like this:</p>
<pre><code>&lt;link rel="stylesheet" href="screen.css" <strong>media="screen"</strong> /&gt;
&lt;link rel="stylesheet" href="mobile.css" <strong>media="handheld"</strong> /&gt;</code></pre>
<p>The first declaration above loads a style sheet for screen use and the second for mobile, <em>if the browser supports it</em>.</p>
<p>Now you know what the handheld style sheet is, forget it. Today's premier mobile browsers, <a href="http://dev.opera.com/articles/view/how-to-serve-the-right-content-to-mobile/" title="Serving content to Opera Mini 4, not using handheld style sheets">Opera Mini 4</a> and <a href="http://developer.apple.com/documentation/AppleApplications/Reference/SafariWebContent/OptimizingforSafarioniPhone/chapter_3_section_2.html#//apple_ref/doc/uid/TP40006517-SW2" title="Optimising for Safari on iPhone, not with the handheld style sheet">Safari on iPhone</a> don't pay it any attention. <a href="http://green-beast.com/blog/?p=198">The handheld style sheet is obsolete</a>. Opera's reason for this was:</p>

<blockquote cite="http://dev.opera.com/articles/view/how-to-serve-the-right-content-to-mobile/"><p>[..] the main issue with handheld is that you are not giving the user much of a choice of what content is delivered to their phone. These days, phones are much more powerful than they used to be, and it is a bit insulting to have a web site see you are a mobile device, and then serve you a really dumbed down version of it's content, even thought the device could quite easily support the full desktop version of the site. If you check out Opera Mobile 8.65, or WebKit on the iPhone, you'll see a browser of comparable power to their desktop cousins.</p></blockquote>

<p>This almost seems fair. Opera Mini, Safari on iPhone, Opera Mobile can all create an experience akin to using a desktop, with a bit of zooming in and out and panning around the screen it is all the same. Why give developers the ability to take that away with a handheld style sheet?</p>

<p>My opinion was that handheld style sheets aren't for removing content or taking away from the experience of mobile browsing, I considered that they were useful for shrinking pages for the mobile platform, taking out unnecessary background images that would only take a long time to download over mobile networks or even <a href="http://www.unintentionallyblank.co.uk/2006/10/12/the-mobile-web-users-cometh-are-you-ready/">organising the content in the right order</a>. Providing a different experience for mobile users is more the realm of browser sniffing and redirection.</p>

<h3>Handheld Reincarnation, Already!</h3>

<p>Handheld style sheets are back already though, just under a different name. Opera Mini 4 and Safari on iPhone both support <a href="http://www.css3.info/preview/media-queries/"><abbr title="Cascading Style Sheets">CSS</abbr>3 media queries</a>, allowing you to target styles to screen sizes. In my opinion this invalidates Opera's arguments for dropping handheld support, since the same effects could be performed through media queries. However, these media queries could be used to perform styling for the mobile devices that I mention above too, so all is not lost, unless you think life for developers could be as hellish as <a href="http://www.christianmontoya.com/2007/08/10/the-sad-sad-state-of-the-mobile-web/#comment-63260">Christian Montoya's prediction</a></p>

<h3>Conclusion</h3>

<p>It looks like handheld style sheets are gone, and media queries and CSS3 are the future. In time, and as support grows for these media queries, we may find use for them in a more general context, shuffling dynamically between 1, 2 or 3 column layouts based on browser size comes to mind, with mobile browsers likely to get the 1 column version.</p>

<p>More importantly, mobile browsing has taken another step forward. If you like to surf on your mobile and you don't already have Opera Mini, <a href="http://www.operamini.com/download/">go and get it</a>.</p>
