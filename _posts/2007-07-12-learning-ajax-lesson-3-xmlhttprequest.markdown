---
layout: post
title: "Learning AJAX: Lesson 3 - XMLHttpRequest"
wordpress_id: 139
wordpress_url: http://www.unintentionallyblank.co.uk/2007/07/12/learning-ajax-lesson-3-xmlhttprequest/
date: 2007-07-12 18:26:37 +01:00
---
<p>After setting out the groundwork for my <abbr title="Asynchronous Javascript And XML">AJAX</abbr> example by creating a <a href="http://www.unintentionallyblank.co.uk/2007/07/06/learning-ajax-lesson-1-dont-use-ajax/">random quote generator in <abbr title="Hypertext PreProcessor">PHP</abbr></a> then <a href="http://www.unintentionallyblank.co.uk/2007/07/09/learning-ajax-lesson-2-adding-a-link-using-the-dom/">using the <abbr title="Document Object Model">DOM</abbr> to add a link</a> that will perform the AJAX function, I am now ready to start communicating with the server and loading up data without refreshing the page. To do so I need to get to grips with the <code class="inline">XMLHttpRequest</code> object.</p>

<h3>A Bit Of Background</h3>

<p><a href="http://en.wikipedia.org/wiki/XMLHttpRequest">XMLHttpRequest</a> is not yet a <abbr title="World Wide Web Consortium">W3C</abbr> standard, but there is a <a href="http://www.w3.org/TR/XMLHttpRequest/">working draft</a>. It was first implemented by Microsoft in Outlook before making its way to Internet Explorer 5 as an ActiveX Object. Then the Mozilla project got their hands on it, implementing it as a native browser object in Mozilla. The other browsers fell in line soon after. It is now the basis of AJAX and powers most of the web applications available online today.</p>

<p>Sadly, even having pioneered this object, Microsoft's Internet Explorer tends to make life difficult for developers because XMLHttpRequest is an ActiveX object (except in <abbr title="Internet Explorer">IE</abbr>7 where it is now a native object). To create one you need the following javascript:</p>

<pre><code>var XHR = new ActiveXObject("Microsoft.XMLHTTP");</code></pre>

<p>All other browsers that support XMLHttpRequest require the following:</p>

<pre><code>var XHR = new XMLHttpRequest();</code></pre>

<p>Once you have your XMLHttpRequest object, the methods are all the same, so it is best to create a function that returns one regardless of browser. I have done this using try and catch, try to create the native object first and, if that doesn't work, the ActiveX version, if neither work I am going to return false so that I can halt the script in another part.</p>

<h3>Cross Browser XMLHttpRequest</h3>

<pre><code>function XHR() {
  try { // try the native object
    return new XMLHttpRequest();
    }
    catch(e) {
      try { // then try the ActiveX object
        return new ActiveXObject("Microsoft.XMLHTTP");
       } catch(e) { return false; }
      }
  }</code></pre>

<p>The final part of this mini series will be posted shortly, where I finish off my example by using the XMLHttpRequest to get my data from the server.</p>
