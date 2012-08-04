---
layout: post
title: First Go With The DOM - Changing Font Sizes
wordpress_id: 10
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/02/fontsizing/
date: 2006-08-02 13:08:39 +01:00
---
<p><ins><strong>While this post has some interesting JavaScript in, there are also a lot of mistakes. Please have a look at <a href="http://www.unintentionallyblank.co.uk/2007/11/09/fontsizer-reloaded-changing-font-sizes-with-javascript/">fontSizer v2.0</a> which is much, much better!</strong></ins></p>

<p>Accessibility matters. I am trying to make this site as accessible as I can in order to learn the methods and set an example. My most recent task has been to add the links you will see at the top right of the page, links to increase or decrease the font size. Initially I searched for a quick bit of code to do this, but none of the results gave me exactly what I wanted, so I decided to do it myself, thus immersing myself in the <acronym title="Document Object Mode">DOM</acronym> for the first time.</p>
<p>My requirements were a script that changed the text size on a  page without loading a different stylesheet or forcing a reload and that once the text size was altered this would persist throughout the site. I also wanted to continue using relative font size attributes (this site's font sizes are all done using ems so that <acronym title="Internet Explorer">IE</acronym> users may resize using the browser controls). My searches found scripts that changed pixel sizes and only worked for the current page, so I got to work.</p>

<h3>Task 1: Manipulate the DOM</h3>
<p>This was my first time playing with the DOM, so I had to find the relevant javascript commands that would help. Anyone with any experience in this matter is already shouting out either <code class="inline">getElementById()</code> or <code class="inline">getElementsByTagName()</code>. I decided upon selecting my elements by the tag name as I was aiming to increase the text size across the board. Since this site is laid out using divs I used <code class="inline">getElementsByTagName('div')</code>. This made it really easy, as all I had to was iterate through the list of elements that I got, changing the font size for each of them as follows:</p>

    function setFontByTag(e, v) {
      var elements = document.getElementsByTagName(e);
      for(var i = 0; i < elements.length; i++) {
        elements.item(i).style['fontSize'] = v;
      }
    }

<h3>Task 2: Size the font</h3>
<p>Now I have the function that will select all my elements I need to pass it a font size that won't become too big or too small too fast. I went through a lot of testing to see the effects of different ways of sizing the text and finally settled on this range of em values:</p>

    var sizes = new Array('0.9', '1', '1.1', '1.2', '1.3');

<p>The standard size will be 1em, so I set a variable si (size index) to 1, such that sizes[si] = 1 too. All I needed to do then was set the function to increase or decrease si depending on an input (and limiting si so that it didn't extend beyond the size of the array). Voila:</p>

    var sizes = new Array('0.9', '1', '1.1', '1.2', '1.3');
    var si = 1;
    function changeSize(inc) {
      if (!document.getElementsByTagName) {return false;}
      // If the browser doesn't support
      // getElementsByTagName then don't do anything
      if (inc == '1') {
        si+=1;
        if (si>4) size=4;
      }
      else if (inc == '-1') {
        si-=1;
        if (si<0) size=0;
      }
      setFontByTag('div', sizes[si]+'em');
    }

<h3>Task 3: Persistent Styling</h3>
<p>So now we have the two functions that increase or decrease the font size, using relative values. Now I wanted to ensure that a visitor using a larger text size didn't have to apply the function to every page they visit. Time to deal with cookies, another first. Thankfully there are a number of good references for setting cookies in javascript. I used Peter-Paul Koch's <a href="http://www.quirksmode.org/js/cookies.html">cookie code from QuirksMode</a>. After adding the functions to my file I then added two more lines to the changeSize function. Right at the bottom I added:</p>
<pre><code>createCookie('fs',si,30);</code></pre>
<p>This set a cookie called fs, with the value of si and an expiry date in 30 days time. Then I added the line:</p>
<pre><code>if(readCookie('fs')) { si = parseInt(readCookie('fs')); }</code></pre>
<p>as the first line of the function changeSize, so that if the size had already been changed it would remain persistent.</p>
<p>These two lines dealt with creating and maintaining the cookie and current size of the text on one page, but reloading or navigating somewhere else still needed to be sorted.</p>
<p>I wrote this small function, to initialise the page correctly if the cookie fs was present:</p>
<pre><code> function init() {
if(readCookie('fs')) { si = parseInt(readCookie('fs')); }
if (!document.getElementsByTagName) {return false;}
setFontByTag('div', sizes[si]+'em');
}</code></pre>
<p>This code was then run using the onLoad command of the body element which resized the text after the page had loaded, but made for an interesting effect whilst it did so. This wasn't my aim, so I had to come up with a different approach. Eventually I left javascript behind entirely and turned to PHP.</p>
<p>Since I was changing the size of the text in each div, I figured that adding a css style, for the generic div, to the page if the cookie was set would work without any headaches.</p>
<pre><code>&lt;?php if(isset($_COOKIE['fs'])) { ?&gt;
&lt;style type="text/css"&gt;
&lt;!--
div { font-size:
&lt;?php $arr = array('0.9', '1', '1.1', '1.2', '1.3');
echo $arr[$_COOKIE['fs']]; ?&gt;em; }
// --&gt;
&lt;/style&gt;
&lt;?php } ?&gt; </code></pre>
<p>This worked and thus after adding the links;</p>
<pre><code>&lt;a href="javascript:changeSize(1)"&gt;+A&lt;/a&gt; |
&lt;a href="javascript:changeSize(-1)"&gt;-A&lt;/a&gt;</code></pre>
<p>the code was complete.</p>
<p>Please test out the functionality yourself, if there are any problems with it <a href="http://www.unintentionallyblank.co.uk/contact/">let me know</a>. If you have any tips or other thoughts too, feel free to comment.</p>
<p>Finally, if you want to use this code yourself, here is the code: <a id="p13" href="http://www.unintentionallyblank.co.uk/fontsizer.zip" title="Fontsizer">Download fontsizer</a>.</p>

<p><ins>Edit: I don't think the link was working, sorry! Things are fixed now, you can download the fontsizer if you want to have a go with it.</ins></p>
