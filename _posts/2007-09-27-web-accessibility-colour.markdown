--- 
layout: post
title: Web Accessibility -- Colour
wordpress_id: 147
wordpress_url: http://www.unintentionallyblank.co.uk/2007/09/27/web-accessibility-colour/
date: 2007-09-27 23:01:29 +01:00
---
<p><a href="http://www.myspace.com/hungoverstuntmen">Try to read this myspace site</a>, I dare you. There is text there, you can probably see, but I would rather copy the text into notepad and read it there than struggle on in my web browser.</p>

<p>MySpace is known for bad designs, but it can serve as an example for us when looking at what not to do.</p>

<p>Now I'm not suggesting that anyone actually involved in web design or development would consider using  white text on a grey background, but it brings up an important point. Continuing from my earlier post, <a href="http://www.unintentionallyblank.co.uk/2007/09/17/web-accessibility-not-just-for-the-blind/">Web Accessibility -- Not Just For The Blind</a>, I have couple of pointers to consider when using colour on the internet.</p>

<h3>Contrast</h3>

<p>Hardly any sites are so bad that people with perfect vision have incredible difficulty reading, but the visually impaired, the colour blind and even people with black and white monitors or a bright light on their screen need enough contrast to pick out text from a background.</p>

<p>The Web Content Accessibility Guidelines have a <a href="http://www.w3.org/TR/AERT#color-contrast">formula to ensure that any important elements on a site, text being the most important, have enough contrast</a>, but a formula is not that much use to you and I, we'd rather be designing or coding than playing with a calculator and hex or RGB values. There are a number of tools available that use the <abbr title="Web Content Accessibility Guidelines">WCAG</abbr> formula, as well as some other clever ideas and visualisations so that you can tell whether your colours are visible to everyone who may be visiting your site. I personally like using <a href="http://www.snook.ca/technical/colour_contrast/colour.html">Jonathon Snook's colour contrast checker</a>, it is quick and easy and applies the recommendations in an intuitive way.</p>

<h3>Don't Represent Anything With Colour Alone</h3>

<p>Returning to the case of the colour blind or those with black and white displays, it is also important that when highlighting elements on a web page that you don't rely on colours alone.</p>

<p>Links are an ideal example to show this. By default they are blue and underlined. Since <abbr title="Cascading Style Sheets">CSS</abbr> gave us the ability to change that, taking away the ugly underline was the first thing I wanted to do! However, if you can't see the different colours, how are you supposed to know where the links are? Underlining, changing the background, underline or the cursor when you hover all add up to make links more obvious to everyone.</p>

<h3>Test Your Site</h3>

<p>Roger Johansson recently posted a list of <a href="http://www.456bereastreet.com/archive/200709/10_colour_contrast_checking_tools_to_improve_the_accessibility_of_your_design/">10 colour contrast checkers</a>. Some will do the simple checking like Snook's tool, others show you what your site will look like to sufferers of different types of colour blindness and one will turn your site from colour to grey scale (<a href="http://graybit.com/files/graybit.php?url=http%3A%2F%2Fwww.unintentionallyblank.co.uk" title="Unintentionally Blank in grey scale">it's quite interesting actually</a>).</p>

<p>Have a look at a few of the tools, does your website pass or are there any colour combinations you are going to have to think about?</p>

<p>Look out for more on approaching less obvious accessibility issues coming soon, and if there is anything specific you want to know about please let me know in the comments or <a href="/contact/">by email</a>.</p>
