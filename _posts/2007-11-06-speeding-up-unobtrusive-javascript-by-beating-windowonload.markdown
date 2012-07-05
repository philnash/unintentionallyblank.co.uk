--- 
layout: post
title: Speeding Up Unobtrusive JavaScript By Beating window.onload
wordpress_id: 165
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/06/speeding-up-unobtrusive-javascript-by-beating-windowonload/
date: 2007-11-06 02:26:22 +00:00
---
<p>I am looking to rework a couple of my scripts here at Unintentionally Blank as in the time since writing them I have learned a lot about accessible, unobtrusive JavaScript. My old scripts no longer cut it and it is time to improve them. Before I start, I wanted to beat <code class="inline">window.onload</code>, the event that tells your JavaScript functions that everything has loaded and you can use the <abbr title="Document Object Model">DOM</abbr> now. I had heard of solutions to this before, but now I was to start developing these scripts again I wanted to find the best solution.</p>

<h3>Why Take On <code class="inline">window.onload</code></h3>

<p>Unobtrusive JavaScript relies on externalising all your JavaScript code and calling it in via <code class="inline">&lt;script&gt;</code> declarations in your <abbr title="Hyper Text Markup Language">HTML</abbr> document's <code class="inline">&lt;head&gt;</code>. With this method, adding functions to elements in the document needs to be done by attaching event handlers which classically was done with <code class="inline">window.onload</code>. However, <code class="inline">window.onload</code> only fires once the document and any elements in the document have loaded. So, if you have large images or lots of them the <code class="inline">window.onload</code> event will not fire until everything has loaded. This has the potential of leaving any elements you want to give events to go without them, potentially allowing users to click on these elements and not receive the enhanced behaviour that your JavaScript was just waiting to provide.</p>

<p>Beating <code class="inline">window.onload</code> by adding event handlers when the DOM, but not necessarily the content and images, has loaded reduces this time and quickens the page's response.</p>

<h3>The Solutions</h3>

<p>Looking around the internet threw up a number of increasingly complicated solutions. <a href="http://dean.edwards.name/weblog/2005/09/busted/">Dean Edwards seemed to come up with the original solution</a> which was steadily improved until a <a href="http://dean.edwards.name/weblog/2006/06/again/">final version as released</a> (and subsequently used in the <a href="http://jquery.com/">JQuery</a> library, I believe). <a href="http://peter.michaux.ca/article/3752">Peter Michaux followed up with some increasingly complicated stuff</a> to remove the time between the page becoming visible and the events being attached, but the Dean Edwards method seems to work for most applications on a small scale.</p>

<p>Following in the footsteps of Dean and packaging the function up into a standalone solution was <a href="http://www.thefutureoftheweb.com/blog/adddomloadevent">Jesse Skinner with his addDOMLoadEvent</a>. Not only did this implement the solution nicely, with all the updates that have occurred since the original solving, Jesse also compressed the function as best as possible. The current version stands at only 671 bytes in size and works in Internet Explorer, Firefox, Opera 9 and Safari, plus degrades nicely to use <code class="inline">window.onload</code> for any browsers that don't support the technique.</p>

<p>Coming up soon then, will be the return of my scripts, faster, more accessible and generally better than ever before thanks to this and other techniques I have picked up over the last year. It will be like an early Christmas present, I can't wait!</p>
