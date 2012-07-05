---
layout: post
title: Version Targeting, HTML5 And The Other Browsers
wordpress_id: 191
wordpress_url: http://www.unintentionallyblank.co.uk/2008/01/24/version-targeting-html5-and-the-other-browsers/
date: 2008-01-24 00:43:32 +00:00
---
<p>A whole lot more has been said about <a href="http://www.unintentionallyblank.co.uk/2008/01/23/version-targeting-for-ie8-developer-wars-my-thoughts/">meta tag browser version targeting</a> unveiled on yesterday's <a href="http://alistapart.com/issues/251">A List Apart</a>. <a href="http://www.digital-web.com/news/2008/01/IE8_Version_Targeting_causes_quite_a_stir">Digital Web has quite a few reactions</a>, a list which is worth going through if you want to see what the top people in the industry think of all this.</p>

<p>I have tried to keep up with as much of the conversation as I can and after some revelations today I am actually a lot happier than I was at the end of my post yesterday. Here is the way I see it now.</p>

<h3>HTML5 To The Rescue</h3>

<p>Almost buried amongst yesterday's noise over version targeting was the announcement that the <a href="http://blog.whatwg.org/html-5-published-as-w3c-first-public-working-draft">HTML5 specification has moved to First Public Working Draft</a>. This is a step along the road to a new standard, but it coincided with <a href="http://blogs.msdn.com/cwilso/archive/2008/01/22/i-feel-happy-too.aspx#7203075">a simple comment left by Chris Wilson on his personal blog</a> and <a href="http://ejohn.org/blog/html5-doctype/">spotted by John Resig</a>:</p>

<blockquote><p>Steve: Are there any doctypes that do not require this new meta tag to render with the IE8 rendering engine?</p>
<p>Chris: @Steve - sure.  Any unknown (i.e. not widely deployed) DOCTYPE.  HTML5, for example.</p></blockquote>

<p>Simply, using the DOCTYPE for HTML5, <code class="inline">&lt;!DOCTYPE html&gt;</code>, and no meta tag version target will not trigger legacy IE7 rendering but full IE8 power rendering. This DOCTYPE will also induce standards mode in all other current browsers <em>and</em> HTML5 is backwards compatible with HTML4, so we could start using it today.</p>

<h3>What About The Other Browsers</h3>

<p>I won't dip into this for too long as nothing is official, however developers and other representatives from the other browsers have chimed in with their thoughts on version targeting. <a href="http://weblogs.mozillazine.org/roc/archives/2008/01/post_2.html">Mozilla</a>, <a href="http://webkit.org/blog/155/versioning-compatibility-and-standards/">Safari</a> and <a href="http://annevankesteren.nl/2008/01/ie-lock-in">Opera</a> all seem initially against the idea and for that I breathe a sigh of relief.</p>

<h3>The Lazy Developer VS The Active Developer</h3>

<p>So where does this leave us? Progressive enhancement and developing for the future aren't dead and the meta tag does the job Microsoft wants it to do, that's where.</p>

<p>Now, an upgrade to IE8 won't "break the web", if a developer has produced a site that currently works in all browsers it will continue to do so with no further effort (given that Firefox, Opera and Safari don't make any huge rendering mistakes in the future). This is the lazy approach and the one that this whole idea has been conceived to fix (at least, prevent breaking anyway).</p>

<p>However, for those active developers, those who read A List Apart, those who read Designing With Web Standards all those years ago, those who have been taught correctly, those who are bemoaning this idea, there is another option. Use the HTML5 DOCTYPE, introduce HTML5 features as and when they are implemented (and you can safely), move web development on at the cutting edge. You won't be held back by meta tags, targeting or switches, it will be the latest standards mode available for your sites. Of course there will be old browsers to consider, but we do that already, it just means that progressive enhancement is in place, not a lock down to specific browsers.</p>

<h3>A Final Problem</h3>

<p>So I know what you're asking now, how do we continue encouraging the uptake of standards when the "lazy" developer doesn't have to push things. Simple. It will become evident with the improvement of new websites using new technologies to the best of their ability that sticking with what you know just isn't enough. Standards adoption can be encouraged by showing what getting out of the lock down, the targeting of IE can do for you and your websites. So no problem.</p>

<h3>I'm A Happy Developer</h3>

<p>My conclusion to this is that the whole thing is a necessary evil. Microsoft ignored or got standards wrong in the past and are now paying for it. This could amount to further losses of browser market share if IE becomes bloated or unusable due to issues with carrying multiple rendering engines. At any rate, they shouldn't "break the web" again (a phrase I promise not to use again for a long while after writing this post). HTML4 is now for those who want to be left behind.</p>

<p>Finally, after discovering the above, my development ideals and work won't have to change drastically. A new DOCTYPE and fresh interest the latest standards and browsers will keep me on my toes and no meta tag will hold me back. I hope you feel the same way.</p>
