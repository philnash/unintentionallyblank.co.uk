---
layout: post
title: "Learning AJAX: Lesson 2 - Adding A Link Using The DOM"
wordpress_id: 138
wordpress_url: http://www.unintentionallyblank.co.uk/2007/07/09/learning-ajax-lesson-2-adding-a-link-using-the-dom/
date: 2007-07-09 22:06:11 +01:00
---
<p>Having made my feelings about <a href="http://www.unintentionallyblank.co.uk/2007/07/06/learning-ajax-lesson-1-dont-use-ajax/">not using <abbr title="Asynchronous Javascript And XML">AJAX</abbr></a> before creating a site that can be used fully without it, I have moved on to the next part of my example. Previously, I had a <a href="http://test.unintentionallyblank.co.uk/randomquote.php">random quote generator</a> that displayed a different quote when you refreshed the page. My aim is to use AJAX techniques to enable you to display a new quote without refreshing the page, but by clicking a link instead. To do so we will need to do some <abbr title="Document Object Model">DOM</abbr> scripting.</p>

<h3>The Markup Doesn't Change</h3>

<p>Currently, <a href="http://test.unintentionallyblank.co.uk/randomquote.php">the example</a> does not have a link to click to replace the quote with a new one. We could add one into the markup so that it could trigger our javascript function that we are still to write, but if a user without javascript enabled visited our page then there would be a useless, broken link. From here on in, the markup for the page will stay the same and everything is to be added dynamically by javascript.</p>

<h3>The <code class="inline">addJSLink</code> Function</h3>

<p>I created a function called <code class="inline">addJSLink(elementID,onClickFunction,linkText)</code> which takes three parameters:</p>
<dl>
<dt>elementID</dt>
<dd>The ID of the element we want to add the link to.</dd>
<dt>onClickFunction</dt>
<dd>The function we want the added link to perform.</dd>
<dt>linkText</dt>
<dd>The text for the link.</dd>
</dl>
<p>Take a look at <a href="http://test.unintentionallyblank.co.uk/ajax2.js">the commented code</a> and see what I have done. I didn't have to use the parameters, I could have built the options straight into the function, but this script is more useful this way. Why? It can be used to add any link, any onClick function and any link text you want. Feel free to do so!</p>

<h3><code class="inline">addJSLink</code> In Action</h3>

<p>I suppose I told a small lie when I said I wasn't going to change the markup at all. The only change I have made to the original example has been to add the link to the javascript to the head of the page, <em>nothing else</em> has changed. So check out the <a href="http://test.unintentionallyblank.co.uk/randomquote2.php">random quote generator with added javascript link</a> and keep an eye out for the next part of this series.</p>
