---
layout: post
title: Aren't Microformats Supposed To Be Accessible?
wordpress_id: 119
wordpress_url: http://www.unintentionallyblank.co.uk/2007/04/30/arent-microformats-supposed-to-be-accessible/
date: 2007-04-30 12:00:49 +01:00
---
<p><img src="http://www.unintentionallyblank.co.uk/wp-content/uploads/2007/04/microformat.png" alt="The Microformats Symbol" class="alignleft" />I have been working on a plugin for <a href="http://www.wordpress.org">WordPress</a> recently that involves the use of <a href="http://codex.wordpress.org/Using_Custom_Fields">custom fields</a> to store data on events and output them on your blog in the <a href="http://microformats.org/wiki/hcalendar">hCalendar microformat</a>. I am a big fan of <a href="http://microformats.org/">microformats</a>, I look forward to being able to use a program to retrieve contact details, event details or other bits of information solely from a well marked up web page and that is why I wanted to contribute with a plugin that helps people use them.</p>

<p>I am also a big fan of <a href="http://www.unintentionallyblank.co.uk/category/accessibility/">accessibility</a> on the Internet too, so try to imagine my surprise when I came across <a href="http://www.brucelawson.co.uk/index.php/2007/microformats-and-accessibility/">Bruce Lawson</a> and <a href="http://cookiecrook.com/weblog/">James Craig's</a> article on the Web Standards Project about <a href="http://www.webstandards.org/2007/04/27/haccessibility/">hCalendar's inaccessible dates</a>. Two movements on the web are now working against each other? Are we pushing in opposite directions and still trying to achieve the same result? Here's my opinion.</p>

<h3>Not As Bad As It Sounds</h3>

<p>Alright, I am being a bit dramatic (I am still learning how to write to attract readers, welcome if you are new and the first two paragraphs have worked so far). James and Bruce's article picked out one problem amongst a number of microformats that are intricately planned out in order to make it both easy to mark up data semantically and allow that information to be found and shared. So why am I writing this post? Not because I was surprised that there was a conflict, but because I was surprised that the hCalendar was set up to fall like this.</p>

<h3>hCalendar's Problem</h3>

<p>hCalendar is used to mark up events, giving them a summary, a location, a start and end time/date and other useful bits of data. The date has turned out to be the issue in this case.</p>

<p>Why? Because the specification instructs that you use the <code class="inline">&lt;abbr&gt;</code> element to surround the date, giving it a title attribute of the <a href="http://en.wikipedia.org/wiki/ISO_8601"><abbr title="International Organisation for Standardisation">ISO</abbr> 8601</a> representation of the date. This causes a problem because, although the text of the date may well be an abbreviation of the full representation, the ISO standard, that same standard is meant for machines to read, not humans. When it comes to screen reading technology, the standards say that the title of the <code class="inline">&lt;abbr&gt;</code> should be read out, but the ISO dates are unrecognisable.</p>

<h3>My Interpretation Of hCalendar</h3>

<p>My surprise was born out of the need to use the <code class="inline">&lt;abbr&gt;</code> element for the date. As far as I was concerned, the title attribute of an element is used to give extra detail about the text contained in the element. In the case of a date, the machine standard is extra information and shouldn't be necessary for humans to read.</p>

<p>As I started to work with the hCalendar, I found myself using a <code class="inline">&lt;span&gt;</code> with the ISO date in the title attribute without even thinking. This is one of the <a href="http://cookiecrook.com/test/uf/uf.htm">proposed solutions from the article</a>. It saves an unnecessary empty element as suggested in the last proposal, it saves using the buggy (in Internet Explorer and Safari)  <code class="inline">&lt;object&gt;</code> element and it saves using an extra <code class="inline">&lt;span&gt;</code> to fix those bugs. It seems ideal.</p>

<h3>Conclusions</h3>

<p>I am actually pretty lost now! This article has pointed out that my implementation of hCalendar was incorrect, but that maybe it should be the right way. Whatever happens the spec guides the consumers of this data as well as publishers, so it has to match up. But, I don't want to compromise on accessibility by using the current spec (of which the <a href="http://microformats.org/wiki/datetime-design-pattern">datetime-design pattern</a> even admits it fails the (not yet recommended) <a href="http://www.w3.org/TR/WCAG20/"><abbr title="Web Content Accessibility Guidelines">WCAG</abbr> 2.0</a>) either. I only hope that someone more qualified than me can invoke a solution to this. There has already been a lot of <a href="http://www.webstandards.org/2007/04/27/haccessibility/#content-replies">discussion</a> over this and I hope that a conclusion is forthcoming. I will be watching and waiting, ready to release my correct <em>and</em> accessible plugin.</p>
