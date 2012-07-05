---
layout: post
title: Web Developer Tools XRAY
wordpress_id: 151
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/16/web-developer-tools-xray/
date: 2007-11-16 14:16:22 +00:00
---
<p>I'm kicking off my <a href="http://www.unintentionallyblank.co.uk/2007/11/13/web-developer-tools-series/">web developer tools series</a> with, what I imagine to be, a lesser known tool from <a href="http://www.westciv.com/">WestCiv</a>. It may sound more like a procedure in a hospital, but XRAY is a simple but invaluable tool in any developer's belt.</p>

<h3>Quick, Simple, Informative</h3>

<p><a href="http://www.westciv.com/xray/">XRAY</a> allows you to take a quick look at some vital properties of any element on your page. Fire up XRAY, click on an element and you will see its name, id and any classes, its position in both the page and the page hierarchy, height, width and whether it is floated, its border, padding and margin. A whole lot of information presented very neatly.</p>

<img src='http://www.unintentionallyblank.co.uk/wp-content/uploads/2007/11/screenshot_4.png' alt='Using XRAY to find information about page elements.' />

<p>Even better is the visual way in which XRAY displays your information. Not just presenting it in the heads up display, but highlighting the element on the page, colouring the padding and margins and displaying the position, height and width next to the element too. And that's not all, the latest version of XRAY allows you to navigate between ancestors and descendants of the element with your up and down keys and between siblings of the element using left and right.</p>

<p>One last thing about XRAY, it is usable in most browsers as it is a <em>bookmarklet</em>. There is no downloading, just drag it from its home to your bookmarks and you can click it at any time to bring up the tool on any site. Though it can be a pain to use in Internet Explorer, this can be very useful to tell if there are any differences in basic proportions between IE and your favourite standards based browser.</p>

<p>It's quick, simple to use, available for most browsers and gives you information about your web pages with just a couple of clicks. I tend to use this as a quicker alternative to more complex Firefox extensions and highly recommend it for use when building anything from the very simple to the very complex web layouts. Try it out here, <a href="javascript:function%20loadScript(scriptURL)%20{{ site.lcb }}%20var%20scriptElem%20=%20document.createElement('SCRIPT');%20scriptElem.setAttribute('language',%20'JavaScript');%20scriptElem.setAttribute('src',%20scriptURL);%20document.body.appendChild(scriptElem);{{ site.rcb }}loadScript('http://westciv.com/xray/thexray.js');">XRAY this page</a>! If you like it, <a href="http://www.westciv.com/xray/">get the latest version from WestCiv</a> and XRAY any page!</p>
