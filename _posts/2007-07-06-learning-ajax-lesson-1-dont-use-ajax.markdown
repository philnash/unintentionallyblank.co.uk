---
layout: post
title: "Learning AJAX: Lesson 1 - Don't Use AJAX"
wordpress_id: 137
wordpress_url: http://www.unintentionallyblank.co.uk/2007/07/06/learning-ajax-lesson-1-dont-use-ajax/
date: 2007-07-06 15:03:49 +01:00
---
<p>Time to learn some hardcore javascript. Having played with the <a href="http://www.unintentionallyblank.co.uk/category/the-dom/"><abbr title="Document Object Model">DOM</abbr></a> I have decided that a good use of my time right now to get a start on some <abbr title="Asynchronous Javascript and XML">AJAX</abbr>, the buzzword and technology of Web 2.0.</p>

<p><a href="http://en.wikipedia.org/wiki/Ajax_(programming)">AJAX</a> stands for Asynchronous Javascript and <abbr title="eXtensible Markup Language">XML</abbr>, which is a touch misleading as you needn't use XML. The first part of the name does make sense, however, as the idea is to use javascript to fetch data from the server without reloading a page. It is useful as loading content only is much quicker than a whole page and it makes a web site seem more like standard desktop applications, for more details see the <a href="http://www.adaptivepath.com/publications/essays/archives/000385.php">Adaptive Path introduction to AJAX</a>.</p>

<h3>Don't Use It?</h3>

<p>Sure, starting off learning AJAX with this sort commandment seems a bit strange, but, as you may know by now, the <a href="http://www.unintentionallyblank.co.uk/category/accessibility/">accessibility</a> of a web site is high on my priority list. Since AJAX is powered mostly by javascript, none of it is available if a user has javascript deactivated.</p>

<p>Does this mean if we want to create accessible web sites that we can't use AJAX? Not if we use the principle of <a href="http://en.wikipedia.org/wiki/Progressive_enhancement">progressive enhancement</a> -- creating a site that is fully accessible to everyone through valid, semantic, accessible markup and then <a href="http://www.robertnyman.com/2006/03/23/ajax-javascript-and-accessibility/">enhancing the experience through unobtrusive javascript and AJAX</a>.</p>

<p>Essentially, to make AJAX, or any javascript, work, we must first make a site or application that functions fully without it.</p>

<h3>Example</h3>

<p>In order to learn AJAX, I am therefore going to start with a function that requires no javascript whatsoever, then I am going to build in some extra functionality that those with javascript will be able to use. My example will be a <a href="http://test.unintentionallyblank.co.uk/randomquote.php">random quote generator</a>, right now refreshing will bring up one of 5 different quotes. To bring javascript and AJAX in, I will make it possible to load another quote without refreshing the page, but that's for another post.</p>
