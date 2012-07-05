---
layout: post
title: "Javascript: Getting IE To Return <pre><code>this</code></pre>"
wordpress_id: 144
wordpress_url: http://www.unintentionallyblank.co.uk/2007/09/20/javascript-getting-ie-to-return-this/
date: 2007-09-20 23:12:10 +01:00
---
<p>Internet Explorer can make the simplest piece of code hard. It turns a simple function into a headache. The standards say one thing, but Internet Explorer doesn't just disobey those standards, it comes up with a different function and a different idea of what that standard even meant. All I want is that when you click on an element to trigger a function, you can refer to the element using <strong><code class="inline">this</code></strong>. Let me explain.</p>

<h3>Simple Javascript Functions... Really?</h3>

<p>I am gaining a lot of experience and practice with <a href="http://www.unintentionallyblank.co.uk/category/javascript/">javascript</a> in my <a href="http://www.unintentionallyblank.co.uk/2007/07/03/the-end-of-one-good-thing-and-the-start-of-something-really-special/">new job</a> and I am really enjoying it. I've dealt with some complex stuff and some seemingly simple                 stuff. But sometimes it is the simplest of functions that cause the biggest problems.</p>

<p>All I needed to do was create a page with a few <code class="inline">&lt;textarea&gt;</code>s that held text for someone to copy. To aid in this, I was to write a short javascript function that would automatically select the text when the <code class="inline">&lt;textarea&gt;</code> was clicked on. Here is the function that will do it:</p>

<pre><code>function selectText() {
  this.focus();
 this.select();
}</code></pre>

<p>Attach <code class="inline">selectText()</code> to the <code class="inline">onClick</code> event for each <code class="inline">&lt;textarea&gt;</code> and I was sorted.</p>

<h3>Except For One Thing...</h3>

<p>Internet Explorer, in all its wisdom, returns the window object as the result of <code class="inline">this</code> regardless of the element that triggered the event. Firefox and all other sane browsers return the element as you would expect. <a href="http://www.quirksmode.org/js/this.html">Quirksmode explains <code class="inline">this</code></a> much better than I can.</p>

<p>I spent forever searching for a way to return the element that triggered the event so that I could use the function, finally stumbling across a mention of <code class="inline">event.srcElement</code> in a forum. Looking it up, I discovered that this was the function I needed. However, using it took a more roundabout method than hoped.</p>

<p>When <a href="http://www.quirksmode.org/js/events_advanced.html">attaching an event to an element</a>, you can only give the reference to the function, passing parameters is not allowed. To pass <code class="inline">event.srcElement</code> to the event that I was attaching I needed an anonymous function. Let me illustrate with code:</p>

<p>For standards compliant browsers:</p>
<pre><code>textareas[i].addEventListener('click', selectText, false);</code></pre>

<p>For Internet Explorer:</p>
<pre><code>textareas[i].attachEvent('onclick',function () {
  IEselectText(event.srcElement);
  });</code></pre>

<h3>Got There In The End</h3>

<p><a href="http://test.unintentionallyblank.co.uk/this.html">Here is the code I finally produced</a>, with a little example of how it works.</p>

<p>So, if you want to use <code class="inline">this</code> don't forget <code class="inline">event.srcElement</code>.</p>
<p>(Unless there's a much better way, but I spent a good while searching for this and I didn't get anything better!)</p>
