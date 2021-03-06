---
layout: post
title: Learning By Mistakes - The ALT Attribute
wordpress_id: 43
wordpress_url: http://www.unintentionallyblank.co.uk/2006/10/04/learning-by-mistakes-the-alt-attribute/
date: 2006-10-04 00:14:02 +01:00
---
<p>Thanks to Roger Johansson's post on <a href="http://www.456bereastreet.com/archive/200610/false_accessibility_claims_on_public_sector_websites/">false accessibility claims on public sector websites</a> I came across <a href="http://www.brucelawson.co.uk/index.php/2006/stupid-government-websites/">Bruce Lawson</a> and <a href="http://www.blether.com/archives/2006/06/the_dti_respond.php">Dan Champion</a>'s campaign to find out what went wrong in the recent Â£200,000 redesign of the <a href="http://www.dti.gov.uk/"><abbr title="Department of Trade and Industry">DTI</abbr> website</a>. The short story is that after redesigning, the DTI displayed a message on the accessibility area of their site, claiming to conform to AA-level standard of the <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> 1.0. Bruce and Dan's problem was that it didn't, quite, quite obviously.</p>

<h3>What's This About Alt Attributes Then?</h3>

<p>I only just found out about this awful use of taxpayers money, especially as I am about to start paying taxes myself, I decided to have a look at the DTI website to see what was wrong. To start with, I noted a table based, <ins><a href="http://en.wikipedia.org/wiki/Tag_soup">tag soup</a></ins> layout (a <del>automatic</del> failure of WCAG 1.0 guidelines <ins>3.3 [use <abbr title="Cascading Style Sheets">CSS</abbr> for layout] and 5.3 [Do not use tables for layout]</ins>) and 69 errors (on the front page) when run through the <a href="http://validator.w3.org/check?uri=http%3A%2F%2Fwww.dti.gov.uk%2Findex.html"><abbr title="World Wide Web Consortium">W3C</abbr>'s validator</a>. Then I disabled images and almost fell off my chair.</p>

<h3>What Happens When Images Are Disabled?</h3>

<p>On a graphical browser, if images are disabled, then to explain what the image was supposed to be is the <a href="http://www.w3.org/TR/html4/struct/objects.html#h-13.8">alt attribute</a>. The W3C specification notes that you have to set alt text for img elements.</p>
<p>The combination of a table based layout and poor understanding of the specification by the designers of the DTI site resulted in the following:</p>
<a class="imagelink" href="http://www.unintentionallyblank.co.uk/wp-content/uploads/2006/10/dti_stars.gif" title="The DTI website with images disabled"><img id="image42" src="http://www.unintentionallyblank.co.uk/wp-content/uploads/2006/10/dti_stars.thumbnail.gif" alt="The DTI website with images disabled" class="centered"></a>

<h3>Pretty Stars</h3>

<p>Yes, the designers have given all the <a href="http://en.wikipedia.org/wiki/Spacer_GIF">spacer gifs</a> the alt attribute of *. Now, this isn't a huge problem on graphical browsers, not all that many people browse the web with images turned off. However, the DTI did pride themselves on the accessibility of the site. So we turn our attention to other borwsers, in this case, screen readers.</p>
<p>To get an idea of what a screen reader will read to a visually impaired user, I use <a href="http://www.yellowpipe.com/yis/tools/lynx/lynx_viewer.php">YellowPipe's Lynx Viewer</a>. Here is an extract of the DTI page:</p>
<pre>*
   *
   *
   DTI HQ, 1 Victoria Street, London * *
   *                                   *
   * * [19]Printer Friendly Version *
   Welcome to the Department of Trade &amp;
   Industry Website

   Working  to create the conditions for business
   success and help the UK
   respond to the challenge of globalisation.
   *
   *
   *</pre>
<h3>Asterisks Everywhere</h3>
<p>According to <a href="http://www.visionaustralia.org.au/info.aspx?page=766">Vision Australia</a>, if you were using <a href="http://www.gwmicro.com/Window-Eyes/">Window-Eyes</a>, this wouldn't bother you. However, if your screen reader of choice happened to be the most popular, <a href="http://www.freedomsci.com/fs_products/software_jaws.asp">JAWS</a> then it would read "star" everytime it met an asterisk. That is six times in a row at one stage!</p>
<h3>The Lesson</h3>
<p>Firstly, don't use spacer gifs, use style sheets to affect the margins, padding and layout of your page.</p>
<p>Next, if you have to use spacer gifs (and you don't) leave their alt attribute null like this: <code class="inline">alt=""</code>. That way nothing appears when images are off or your user is using a screen reader. Simple.</p>
