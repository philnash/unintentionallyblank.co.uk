---
layout: post
title: Media Queries and CSS3 Experiments -- Varying Columns
wordpress_id: 173
wordpress_url: http://www.unintentionallyblank.co.uk/2007/11/27/media-queries-and-css3-experiments-varying-columns/
date: 2007-11-27 00:19:03 +00:00
---
<p>I recently discovered that Opera Mini, the mobile browser for those of us without iPhones, had not only released its 4th version, but that, like mobile Safari, had <a href="http://www.unintentionallyblank.co.uk/2007/11/15/opera-mini-4-released-the-death-of-the-handheld-style-sheet/">killed off handheld style sheets in favour of media queries</a>. This brought about quite <a href="http://www.russellbeattie.com/blog/css3-and-the-death-of-handheld-stylesheets">a positive response from Russell Beattie</a>, who thought that media queries are "a much better way to specify formatting" as well as <a href="http://www.unintentionallyblank.co.uk/2007/11/15/opera-mini-4-released-the-death-of-the-handheld-style-sheet/#comment-11754">worried thoughts</a>, <a href="http://www.christianmontoya.com/2007/08/10/the-sad-sad-state-of-the-mobile-web/#comment-63260">again</a>, from <a href="http://www.christianmontoya.net/">Christian Montoya</a>.</p>

<p>Before I came to any conclusions, I wanted to try out what you could do with media queries first. Currently Safari 3, Opera 7+, Safari on the iPhone and Opera Mini 4 support media queries and all other browsers should ignore them. Our favourite exception to every rule, Internet Explorer does have problems with them though, occasionally applying rules regardless of whether they apply. Opera provide a very good explanation of why and how to avoid this with <a href="http://dev.opera.com/articles/view/safe-media-queries/">safe media queries</a>.</p>

<h3>3 Columns, 2 Columns, 1 Column - The Choice Is Your Viewport's</h3>

<p>Not the catchiest of phrases, but the first application I thought media queries, essentially if statements on the size of your browser's viewport, were perfect for was site layout. 3 columns isn't much use on a mobile device, but one column looks silly when you've got 1024 pixels of width, so why not have both?</p>

<p>So, I stole <a href="http://meyerweb.com/eric/thoughts/2005/11/09/multi-unit-any-order-columns/">Eric Meyer's example of Any-Order Columns</a>, changed the sizes up to pixels to make everything easy (center column 500px wide and columns 2 and 3 both 200px wide) and applied the following <abbr title="Cascading Style Sheets">CSS</abbr>:</p>

<pre><code>@media all and (max-width: 899px) {
  #block3  {
    float:none;
    clear:both;
    width:100%;
    left:0;
    margin-left:0;
  }
  #block1 {
    margin-left:0;
  }
}
@media all and (max-width: 699px) {
  #block1 { width:300px; }
}
@media all and (max-width: 499px) {
  #block1 { width:100%; margin-right:0; }
  #block2 { width:100%; float:none; clear:both; }
}</code></pre>

<p>This says that, at viewport widths of 900px and above you will see 3 columns, between 900 and 700px wide you will see 2 columns and the 3rd column drop below to take up 100% width. Then, between 700 and 500px, the main column shrinks to 300px to fit and finally at below 500px of viewport width you will see one column with the content all in order (there's a reason I chose Any-Order Columns!).</p>

<p>You can see <a href="http://test.unintentionallyblank.co.uk/media.html">my example</a> in Safari 3 or Opera 7, 8 or 9 or even the <a href="http://www.operamini.com/demo/?url=http://test.unintentionallyblank.co.uk/media.html">Opera Mini simulator</a>. Viewing it in any other (major) browser would just appear to give you three columns 900px wide.</p>

<h3>Findings</h3>

<p>Disappointingly you have to refresh to get the effect of the media queries, rather than just resizing your browser. However, for such a simple example I thought it worked quite effectively. It allowed the test page to be displayed ideally depending on the size of the screen, giving a third option for the future for those constantly stuck between fixed or liquid width layouts. I also liked that when you view the page in Opera Mini there was no need to zoom in. Even though the display of full web pages and the zoom is one of the little browsers strongest points, not having to zoom because the page is already formatted for the small screen makes it even easier to surf.</p>

<p>I still have more to consider about the potential of these media queries in general, but in the future, as the number of different screen resolutions and the number of browsers supporting media queries grow, this is something I would consider again. What do you think? Is this potential, something to start using now or something to forget?</p>
