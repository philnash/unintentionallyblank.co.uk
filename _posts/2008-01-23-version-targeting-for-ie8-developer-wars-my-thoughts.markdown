---
layout: post
title: Version Targeting For IE8, Developer Wars, My Thoughts
wordpress_id: 189
wordpress_url: http://www.unintentionallyblank.co.uk/2008/01/23/version-targeting-for-ie8-developer-wars-my-thoughts/
date: 2008-01-23 01:29:25 +00:00
---
<p>Change is afoot. Every web developers' favourite publication, <a href="http://www.alistapart.com">A List Apart</a>, has split the split them into three groups today, the content, the annoyed or the confused. The cause of this: <a href="http://alistapart.com/articles/beyonddoctype">Aaron Gustafson's introduction to Internet Explorer 8's version targeting feature</a> and <a href="http://alistapart.com/articles/fromswitchestotargets">Eric Meyer's thinking process in response to the idea</a>. In a nutshell, from <abbr title="Internet Explorer">IE</abbr>8 onwards the inclusion of a meta tag (or server setting) will be necessary to target the version of IE to use to render the page, defaulting to IE7 rendering if no meta tag is found (please see the article for more detail).</p>

<p>This has thrown the developer community into disarray as everyone tries to work out whether this is madness or genius. <a href="http://www.zeldman.com/2008/01/22/in-defense-of-version-targeting/">Jeffrey Zeldman</a>, <a href="http://snook.ca/archives/browsers/version_targeting_ie8/">Jonathon Snook</a> and <a href="http://meyerweb.com/eric/thoughts/2008/01/22/targeted/">Eric Meyer</a> think it is a good thing, <a href="http://adactio.com/journal/1402/">Jeremy Keith doesn't</a>, <a href="http://www.webstandards.org/2008/01/22/microsofts-version-targeting-proposal/">Drew McLellan distanced the whole Web Standards Project from the decision</a> and <a href="http://www.andybudd.com/archives/2008/01/has_internet_ex/">Andy Budd thinks that IE will be the one to feel the force of the mistake</a>. Here are my thoughts as I pass from the confused camp to one of the other two.</p>

<h3>Breaking The Web</h3>

<p>So what are the reasons behind this new control? Well, it all goes back to Internet Explorer's shoddy implementation of standards in the past and the eventual turn to support standards properly more recently. <a href="http://en.wikipedia.org/wiki/Internet_Explorer_box_model_bug">IE5 used the wrong box model</a>, IE6 was riddled with many bugs and less than half of the <abbr title="Cascading Style Sheet">CSS</abbr> 2.1 specification implemented and IE7 is finally on the right tracks. While this sort of progress is beneficial to the web overall, there has been a lot of pain involved with upgrades to the browser "breaking the web". The recent upgrade to IE7 caused the most problems due to the vast improvement to standards support.</p>

<p>Of course, you would have thought that improving support for standards would improve the web, but where IE6 had been the standard for so long, many websites were coded to IE6 compatibility rather than <abbr title="World Wide Web Consortium">W3C</abbr> compatibility. When IE7 fixed the problems in IE6 it simultaneously broke those sites. (<a href="http://blogs.msdn.com/ie/archive/2008/01/21/compatibility-and-ie8.aspx">See Chris Wilson's, of the IE team, explanation for further detail</a>.)</p>

<p>Aaron's article explains how the old method of easing between browser versions is broken now too. Declaring a DOCTYPE at the start of an <abbr title="Hyper Text Markup Language">HTML</abbr> page would render it in the browser's standards mode, missing that out would invoke the quirks mode that rendered sites using the incorrect box model and other legacy differences in order to keep everything running smoothly. With the pressure of web standards groups over doing things right and validating code, web editing tools have started to include DOCTYPES whether the user knew what it was or not, thus breaking the only switch the browser had to distinguish which sites could cope with the latest rendering.</p>

<h3>Version Targeting</h3>

<p>So it has come to this, another method of telling the browser how to render a web page and one that comes laden with a whole bunch of new problems and benefits. I tried to write down what I thought was good and bad about the idea and came up with quite a list (things are still occurring to me as I write this, it is all so fresh), so I am sharing it so you know exactly what I am thinking.</p>

<dl>
<dt>The Good</dt>
<dd><p>For a start, the default setting of IE7 rendering (which applies to the whole web, but for those particularly fast developers who have already updated their sites) means that an IE upgrade will never "break the web" again. This is useful for developers who don't want to check through every site they have ever produced and fix any problems, they can set the version in which they know the sites work.</p></dd>
<dd><p>Browser sniffing, the unpredictable methods possibly used in the past need never rear its head again. As Eric Meyer said:</p><blockquote cite="http://alistapart.com/articles/fromswitchestotargets"><p>Version targeting reverses the emphasis of browser sniffing completely, making it ???????the browser checking the page to see when it was developed and making adjustments to its behavior accordingly.???????</p></blockquote></dd>
<dd><p>The Internet Explorer team can be set free to implement standards without worrying about all the sites that may be affected.</p></dd>
<dt>The Bad</dt>
<dd><p>Before version targeting, you had to rely on an upgrade implementing standards correctly (something that should be reasonable, but rarely is), now developers will have to rely on browser manufacturers maintaining old rendering engines correctly.</p></dd>
<dd><p>Browsers could become very bloated. Consider in 20 years time, where can reasonably expect to see IE15, by then there will be 9 different rendering engines that will be available to put into play at any time.</p></dd>
<dd><p><a href="http://en.wikipedia.org/wiki/Progressive_enhancement">Progressive enhancement</a> will become vastly stunted. The idea of providing functionality that up to date browsers will be able to use, but locking the site to rendering by the browsers you tested in disables those bits of functionality that the browsers could potentially cope with (unless the developer returns to update the meta tag).</p></dd>
<dt>Further Considerations</dt>
<dd><p>What if editing tools start adding arbitrary version targeting, like they started adding DOCTYPES? Inexperienced web developers wouldn't know where they were or why a site created with one tool looked different to the same site created by another.</p></dd>
<dd><p>What about new standards? What will an HTML5 site look like when displayed in IE7 mode? Or HTML6? Or HTML60?</p></dd>
<dd><p>What about developer apathy? It stands to reason that the majority of websites are not strictly coded pillars of the standards community, in fact all those developers not reading A List Apart and considering this now are the ones that this sort of time and rendering freeze are aimed at. Now, if the majority of sites out there are built like this, freezing time and rendering in 2007 with IE7 then no matter how much innovation goes on in standards or IE rendering, the most used rendering engine will still be the default IE7.</p></dd>
<dd><p>What happens when you opt for a browser that a user doesn't have? For example, say you opt for IE9 rendering and a user with IE8 visits. Do they render in IE8 or IE7 mode?</p></dd>
</dl>

<h3>A Conclusion?</h3>

<p>The things I worry about the most are the future, the potentially bloated browsers, maintenance of old rendering engines and behaviour when faced with future standards. Hopefully someone will be able to provide some sort of reassurance soon. The future standards question was mentioned by Eric Meyer, who said that perhaps default rendering for later versions of HTML could be switched by the DOCTYPE again, given that IE7 won't have much of an idea. This is something I would definitely support as it would retain an incentive to those who want to use the new technology available but don't know all the intricate details.</p>

<p>There is one thing I haven't mentioned yet. The "edge" keyword, to force the browser to use its latest rendering engine. This could go one of two ways, either everyone will use it and the targeting will become as defunct as DOCTYPE switching or no-one will and progressive enhancement will be dead. I just don't know which will happen.</p>

<h3>Tentatively... Yes</h3>

<p>After all this thinking, all this writing, I think that version targeting in Internet Explorer could be a good thing. I will give it my tentative support for now, while waiting to hear more about its implementation and details. However, for other, standards compliant browsers, I don't think it should be adopted. As I made clear at the start of this article, upgrades to IE7 only broke the web because IE6 did it so wrong for such a long time. Never has anyone complained of Firefox, Opera or Safari breaking the web when they upgrade, no-one is panicking or advising developers to check all their sites in the Firefox 3 beta right now, because they have it mostly right already and are only adding features. Progressive enhancement can live on for these browsers, they can continue to implement the standards as they were meant to be, while supporting the older ones too.</p>

<p>Internet Explorer has always been a special case when compared to the standards. Sadly, it remains the most popular browser out there, leaving us devoting precious time to fix its quirks. Maybe one day, when the oldest browser is IE10 and all standards are supported well by all browsers we can drop this targeting again, focusing instead on progressive enhancement and encouraging people to upgrade not because it makes developing easier, but because they get to use all the cool things afforded by current technology.</p>
<p>Until then, at least we can guarantee that IE8 won't break anything straight away!</p>

<p><ins><a href="http://www.unintentionallyblank.co.uk/2008/01/24/version-targeting-html5-and-the-other-browsers/">More of my thoughts on browser targeting after the dust started to settle a bit.</a></ins></p>
