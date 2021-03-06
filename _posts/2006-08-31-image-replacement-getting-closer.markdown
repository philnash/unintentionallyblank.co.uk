---
layout: post
title: Image Replacement - Getting Closer?
wordpress_id: 24
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/31/image-replacement-getting-closer/
date: 2006-08-31 18:49:53 +01:00
---
<p>Being relatively new to the web standards scene, and especially since I was drawn in by marvels such as the <a href="http://www.csszengarden.com"><abbr title="Cascading Style Sheets">CSS</abbr> Zen Garden</a>, I have read over the many different ways of <a href="http://mezzoblue.com/tests/revised-image-replacement/index.php">replacing text with an image</a>. Time and time again I was disappointed with each method for one of two reasons; it used an extra empty span element or would not work in the "images off/css on" scenario. Using an extra span is unsemantic and "images off/css on" left a gap where either the image or text should have gone.</p>
<h3>Can't CSS Deal With This?</h3>
<p>Evidently not, otherwise one of the far more talented web developers out there would have already revolutionised image replacement and I would be using their method. However, whilst reading up about this the other day, I came across a rather hopeful sentence at <a href="http://www.mezzoblue.com/archives/2005/03/30/image_replac/">mezzoblue</a>.</p>
<blockquote><p>The ideal fix is CSS3â€™s generated content module, which allows something like this:
<pre><code>h1 {
  content: url(image.gif);
}</code></pre></p></blockquote>
<p>I thought about this and did some research into CSS3 to discover that, for the most part, the generated content module was part of the distant CSS3 spec, but it could be used in certain circumstances. According to the CSS2.1 spec, content could in fact be generated when using the :before or :after pseudoclasses. This means that I should be able to adapt some code so that a <em>standards compliant</em> browser would be able to replace text with an image, but display the text if images were off.</p>
<h3>To Work</h3>
<p>I decided to work with my favourite replacement technique, the <a href="http://www.moronicbajebus.com/playground/cssplay/image-replacement/">Leahy</a>/<a href="http://www.kryogenix.org/code/browser/lir/">Langridge</a> method. Rather than pushing the text out of the way by padding the top of the element and applying a background to it, I thought I would push it out of the way with the image itself.</p>
<h3>The Code</h3>
<p>Given:</p>
<pre><code>&lt;h1 id="replace"&gt;Unintentionally Blank&lt;/h1&gt;</code></pre>
<p>You only need the following CSS to hide the text and display the image:</p>
<pre><code>#replace:before {
 content:url(header.gif);
  display:block;
  }
#replace {
 padding:0;
  margin:0;
  height:104px;
 overflow:hidden;
  }</code></pre>
<p>And here is an <a href="http://test.unintentionallyblank.co.uk/nir.html">example</a>. Note: 104px is the height of the image I'm using in place of the text.</p>
<h3>What The Code Does</h3>
<p>In the before clause we have two properties. One is our content generator, which is pretty self explanatory. Secondly we declare <code class="inline">display:block;</code>, this to make the image act like a block element so that it pushes the real text down.</p>
<p>Next we style the element itself. Declaring zero padding and margin is standard, the height should be the height of the image we are replacing the text with. Finally, we use <code class="inline">overflow:hidden;</code> like in Leahy/Langridges method, so that the text does not show. Perfect.</p>
<h3>Issues</h3>
<p>Firstly, I haven't got an extensive testing suite of browsers at my finger tips (if anyone does and wants to test for me, please go ahead), so the browsers I know this works in are: Firefox 1.5, Opera 9, Netscape 8. I am guessing that the very excellent Safari renders this well too. I can however promise that it will not work in <em>any</em> Internet Explorer version you can dream of. This is due to the lack of support for either :before, :after or content generation in CSS. Apparently iCab doesn't support those operators either (according to <a href="http://www.macedition.com/cb/resources/css3support_selectors.html">MacEdition</a>), but I am only interested in the big four visual browsers really (plus, the degradation is certainly graceful).</p>
<p>Forgetting <abbr title="Internet Explorer">IE</abbr> for the moment, I would like to focus on the accessibility and standards side of things. This method neither uses a meaningless extra element nor hides the text from a screenreader. So anyone can use it! Accessibility for all!</p>
<h3>So It Doesn't Work In Internet Explorer?</h3>
<p>Yeah, but what does? OK, not the right attitude, but until Microsoft start putting their software where their mouth is with regards to web standards, this sort of development is severly hampered. What to do then? There are two options:</p>
<ol>
<li>Style the text as best as possible and let it degrade in IE</li>
<li>Give IE something else to do</li>
</ol>
<p>Option one would stop me writing right here, but it doesn't seem to be the way forward, I mean you do have a reason for replacing the text with an image right? So to option 2, maybe we could just use one of the other image replacement techniques that already works in IE. I have already stated my feelings on <a href="http://www.unintentionallyblank.co.uk/2006/08/14/if-internet-explorer-then-do-something-else/">IE's conditional comments</a> so let's use them. I am going to use Leahy/Langridge, but feel free to replace their code with your own preferred replacement method. All I did was add:</p>
<pre><code>&lt;!&#45;&#45;[If lte IE 7]&gt;
&lt;style type="text/css"&gt;
#replace {
  width:100%;
  padding-top:104px;
  overflow:hidden;
  background:#fff url(header.gif) no-repeat top left;
  height: 0px !important;
  height /**/:104px;
  }
&lt;/style&gt;
&lt;![endif]&#45;&#45;&gt;</code></pre>
<p>to your head element. Note the use of the "lte" command in the conditional comment... come on Microsoft, you can implement the standards by version 8 can't you? Here's an <a href="http://test.unintentionallyblank.co.uk/nir2.html">example to check out in IE</a>.</p>
<h3>IE5/Mac?</h3>
<p>No, it won't work on <em>that</em> either, but (if you're still supporting it) you could always pass your alternative method to it using the <a href="http://stopdesign.com/examples/ie5mac-bpf/">Band Pass Filter</a>.</p>
<h3>A Name</h3>
<p>So what if this is <em>the next</em> image replacement technique? It'll need a name. How about Nash Image Replacement (NIR)? It fits with all the other names too, <em>and</em> it reminds you of me, perfect.</p>
<h3>Conclusion</h3>
<p>So, this method uses no extra mark up, does not hide text from screenreaders and displays the text if images are off but css is still on, in all but IE (I hope anyway, as I said, I have a very small set of testing browsers). So what next? All we have to do is sit back and wait for Internet Explorer to support the current standards and we have the method that we need. What do you think?</p>
