--- 
layout: post
title: Tables Or Lists - The HTML Calendar Debate
wordpress_id: 215
wordpress_url: http://www.unintentionallyblank.co.uk/?p=215
date: 2008-06-25 06:40:25 +01:00
---
<p>Lists are semantic, tables are bad, right?</p>

<p>What seems to be the view of some in web development is now finally coming under scrutiny as mistakes are made. Put it this way, tables aren't always bad and lists aren't always semantic, context is important. The examples that have brought this to my attention have been quite surprising because of the amount of effort it has taken to create them.</p>

<h3><abbr title="Cascading Style Sheets">CSS</abbr> Calendars</h3>

<p>First, a week ago Rob Glazebrook posted a <a href="http://www.cssnewbie.com/list-based-css-calendar/">list based CSS calendar</a> at CSS Newbie and that was followed up by Chris Coyier and Tim Wright's <a href="http://css-tricks.com/elastic-calendar-styling-with-pure-css/">elastic, list based CSS calendar</a> at CSS Tricks. Hacks and unsolved problems aside my belief is that their solutions are taking both the creators and the readers of the respective blogs down the wrong path (though thankfully Tim and Chris did finish with a disclaimer it was perhaps a little bit too far into the small print for the first few commenters who thought it was a great idea).</p>

<p>While I don't disagree that a month is a ordered list of days I don't think the markup chosen is as semantic as it can be for the presentation Rob, Tim and Chris were aiming for. As it happens there are physical calendars that are set out in a vertical list and it is perfectly reasonable to set things out as a list of days. However, grid based calendars are, well, a grid. A grid where the columns relate to days of the week as well, so why not take advantage of that.</p>

<h3>Use the right tool for the job</h3>

<p>I won't say any more for now, just show some examples that I thought I'd come up with to illustrate the point. <a href="http://test.unintentionallyblank.co.uk/unstyled-calendar.html">Here is a calendar using Rob's list markup (minus the invalid clearing div as a child of the ordered list) followed by the same calendar created using a table</a>. As you can see, with no CSS, the table is already part of the way towards the layout the list based calendars were aiming for and, because I added days of the week at the top as <code class="inline">&lt;th&gt;</code> with a scope of <code class="inline">col</code> a screen reader will read out the day of the week for each cell in the table it reads adding to the accessibility. To show why using the correct tool for the job makes life a lot easier, I even <a href="http://test.unintentionallyblank.co.uk/styled-calendar.html">tidied up the table based calendar with just 4 CSS rules</a>.</p>

<p>When you are creating a list of days in a month, a list is perfect, when you are creating a grid of columns of days a table suits the job. Just because you can use something else doesn't mean you have to, the right tool for the right job not only makes your life easier but makes more sense on the page too. Have a look at my examples and decide for yourself.</p>
