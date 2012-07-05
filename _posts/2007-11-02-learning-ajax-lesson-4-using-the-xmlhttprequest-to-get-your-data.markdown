---
layout: post
title: "Learning AJAX: Lesson 4 - Using The XMLHttpRequest To Get Your Data"
wordpress_id: 163
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/02/learning-ajax-lesson-4-using-the-xmlhttprequest-to-get-your-data/
date: 2007-11-02 11:00:51 +00:00
---
<p>Time to finish off my short series on simple <abbr title="Asynchronous JavaScript And XML">AJAX</abbr>. I started a while ago with an explanation on <a href="http://www.unintentionallyblank.co.uk/2007/07/06/learning-ajax-lesson-1-dont-use-ajax/">not using AJAX</a>, then I backed that up with an <a href="http://www.unintentionallyblank.co.uk/2007/07/09/learning-ajax-lesson-2-adding-a-link-using-the-dom/">unobtrusive way of adding a link to a page using JavaScript</a> so that we only use AJAX when JavaScript is available. In the last post I explained, simply, <a href="http://www.unintentionallyblank.co.uk/2007/07/12/learning-ajax-lesson-3-xmlhttprequest/">the XMLHttpRequest</a> and now I will show you what to do with it, culminating in the completion of a very simple, AJAX powered random quote generator.</p>



<h3>Using The XMLHttpRequest</h3>

<p>We start with the function I provided in <a href="http://www.unintentionallyblank.co.uk/2007/07/12/learning-ajax-lesson-3-xmlhttprequest/">the last post</a>, <code class="inline">XHR()</code> which returns an XMLHttpRequest object. With the object we define the <abbr title="Uniform Resource Locator">URL</abbr> of the file we want to return, what we do while waiting for the response and what to do when we receive the response. It looks a bit like this:</p>

<pre><code>var request = XHR();
request.open('get',URL);
// get the file you want
request.onreadystatechange=function() {
  if (request.readyState == 1) {
  // what to do while waiting
  }
  if(request.readyState == 4) {
    if (request.status &amp;&amp; /200|304/.test(request.status)) {
      // what to do when you get the response
    }
    else {
    // what to do when the response is an error
  }
}
request.send(null);</code></pre>

<p>The first part is simple, we get our XMLHttpRequest and we immediately set up where we intend to get our file from, by calling <code class="inline">request.open</code>. I have called 'get' as the <abbr title="Hyper Text Transfer Protocol">http</abbr> in this example, but you could also use 'post'. The URL is the one that you wish to return.</p>
<p>Next we set up what to do whilst we wait for the file to arrive and what do when it does. There are 5 states we can attach event handlers to and they correspond to the following <code class="inline">readyState</code> of our request.</p>
<dl>
<dt>0:</dt>
<dd>No connection</dd>
<dt>1:</dt>
<dd>Connection loading</dd>
<dt>2:</dt>
<dd>Data loaded</dd>
<dt>3:</dt>
<dd>Connection is interactive</dd>
<dt>4:</dt>
<dd>Connection complete</dd>
</dl>

<p>I have only used 2 of these states for my example, 1 and 4, content loading and everything complete. While the content is loading, it is quite common to display a message or animated gif to indicate that the data is loading. When the connection is complete, any of the normal http codes could be returned to distinguish the result, so my example checks for this too using the test method of <code class="inline">request.status</code>. If the status is 200 (OK) or 304 (not modified) then we have the file safely and can carry on, any other results and we should display an error message.</p>

<p>Once these event handlers have been identified, we need to send the request, in our case we send no parameters, so choose <code class="inline">request.send(null)</code>.</p>

<p>Actually, there is one little problem. Safari's cache tends to cache response statuses and doesn't trigger any changes if we write the function as above. To combat this we need one extra line: <code class="inline">request.setRequestHeader( 'If-Modified-Since', 'Thu, 31 Oct 2007 00:00:00 GMT' );</code> will tell the browser that the data has changed since the date you add. I have put in a date from a couple of days ago, but any time in the past will work.</p>

<h3>Ready To Use AJAX</h3>

<p>Originally I started with the intention of writing a random quote generator that could update using AJAX. You can see the fully working <a href="http://test.unintentionallyblank.co.uk/randomquote3.php">random quote generator example</a> and <a href="http://test.unintentionallyblank.co.uk/ajax3.js">the source</a> to see what I did. Most of the code is commented as in the series of posts and any that isn't deals with the manipulation of my small quotes.txt file to print out the new quote. This script is intended as an example, but you are free to borrow it and use it, just let me know if you need any help adapting it.</p>

<p>I hope you have enjoyed this simple look into AJAX, I hope to bring you more complex examples in the near future. If there ever is anything you want to read on this blog, whether it be more JavaScript, <abbr title="Hyper Text Markup Language">HTML</abbr>, <abbr title="Cascading Style Sheets">CSS</abbr>, web standards or anything, please <a href="http://www.unintentionallyblank.co.uk/contact/">let me know</a>.</p>
