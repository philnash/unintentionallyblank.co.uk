---
layout: post
title: "Stylesheet Switcher - Part 3: Revenge Of IE"
wordpress_id: 23
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/30/stylesheet-switcher-part-3-revenge-of-ie/
date: 2006-08-30 12:36:11 +01:00
---
<p>I was just running through my examples yesterday evening, checking they work in <abbr title="Internet Explorer 7">IE7</abbr> when to my horror my <a href="http://www.unintentionallyblank.co.uk/2006/08/18/stylesheet-switcher-part-2/">stylesheet switcher</a> failed miserably. I ran to IE6 to see if I had overlooked the problem for IE in general and it turned out that I had. I guess that since the majority of visitors to this site use Firefox (in which the function works perfectly) no-one else had noticed either. The strange thing was that it was only <a href="http://test.unintentionallyblank.co.uk/switcher2.html">the final version</a> that didn't work, <a href="http://test.unintentionallyblank.co.uk/switcher.html">the first version</a>, using just links rather than the dropdown box, did work. This means that the stylesheet switching function was working fine and there was a problem with the dropdown box.</p>
<h3>What Was Wrong?</h3>
<p>Frustratingly enough, the <code class="inline">onChange</code> event didn't seem to be firing when I used the dropdown box. So I headed back to the code to find the problem. Turns out that IE, in all it's wisdom, doesn't consider <code class="inline">onChange</code> an attribute that you can set with the standard <code class="inline">setAttribute</code> function (unlike <em>all</em> other browsers).</p>
<pre><code>drop.setAttribute("onChange", &raquo;<br>"setStyleSheet(this.options[this.selectedIndex].value)")</code></pre>
<p>Instead, you need to set the <code class="inline">onChange</code> like so:</p>
<pre><code>drop.onchange = function() &raquo;<br>{ setStyleSheet(this.options[this.selectedIndex].value) };</code></pre>
<p>(Non line breaks signified by &raquo;)</p>
<h3>Fixed!</h3>
<p>Simple, but it worked. So the really finished article is available to <a href="http://test.unintentionallyblank.co.uk/switcher1.html" title="See the final demo of the stylesheet switcher">view</a> and <a href="http://test.unintentionallyblank.co.uk/switcher1.js">download</a>.</p>
<p>I did add a couple of other changes to the final product for accessibility reasons. I gave the dropdown box a label to signify what it did and provided the form with a title to explain it's use when moused over. If you want to style your label and dropdown box, the form has been given an id of "linkBox". So styling the dropdown box is as easy as setting up your <abbr title="Cascading Style Sheets">CSS</abbr> as so:</p>
<pre><code>#linkBox select {
  dropdown box styles...
  }
#linkBox label {
  label styles...
  }</code></pre>
<p>I hope you find a use for this piece of code, I will be as soon as I get round to creating a second design for this site!</p>
