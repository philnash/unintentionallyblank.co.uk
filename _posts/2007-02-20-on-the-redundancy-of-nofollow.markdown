---
layout: post
title: On The Redundancy Of nofollow
wordpress_id: 76
wordpress_url: http://www.unintentionallyblank.co.uk/2007/02/20/on-the-redundancy-of-nofollow/
date: 2007-02-20 13:00:24 +00:00
---
<p>Recently I have been considering the very standard feature of <a href="http://www.wordpress.org">Wordpress</a> that is adding <code class="inline">rel="nofollow"</code> to all links in comments. I posted recently how I was <a href="http://www.unintentionallyblank.co.uk/2007/02/15/new-akismet-bad-behaviour-almost-zero-spam/">receiving next to no comment spam</a> in my <a href="http://www.akismet.com">Akismet</a> spam folder due it's latest plugin release. This got me thinking about whether <code class="inline">nofollow</code> is worthwhile any more.</p>

<h3>The History</h3>

<p><code class="inline">nofollow</code> was a <a href="http://googleblog.blogspot.com/2005/01/preventing-comment-spam.html">Google creation</a> from early 2005 that was supported by both <a href="http://blogs.msdn.com/livesearch/archive/2005/01/18/nofollow_tags.aspx">MSN</a> and <a href="http://www.ysearchblog.com/archives/000069.html">Yahoo</a>. It was designed to stop the search bots from following links that weren't necessarily endorsed by the owner of the site it was on. It had a mixed welcome, but was incorporated by many of the major players in blogging. I wasn't blogging back then, but, as far as I can see, there weren't many alternatives other than picking through all your comments and deleting them.</p>

<h3>Better Protection</h3>

<p>A lot has happened since then, now we have <a href="http://www.akismet.com">Akismet</a>, <a href="http://unknowngenius.com/blog/wordpress/spam-karma/">Spam Karma</a>, <a href="http://www.bad-behavior.ioerror.us/">Bad Behaviour</a> and probably many others that I don't know about. These days you don't see much spam on blogs, if at all. The spam blockers are doing a fantastic job, so why do we need this weak <code class="inline">rel="nofollow"</code>? I check my blog daily, <em>if</em> something does slip through the nets, I delete it instantly.</p>

<h3>Do The Spammers Even Care?</h3>

<p>In early 2005 the idea of stopping the spammers getting any <a href="http://en.wikipedia.org/wiki/Google_juice">Google juice</a> seemed like a good opportunity to put them off. Did it? Of course not, otherwise we wouldn't all have spam filters on our blogs. Are the spammers aiming to improve their Page Rank? Obviously they wouldn't complain if it were a side product of the process, but what they really want is clicks. Page views, click throughs, traffic, the more people that see the links, whether on a blog, in the moderation section or wherever, the more are likely to click. While the majority of us do not use any old site as a pharmacy, casino, software seller or whatever, if just one or two people make a purchase then the spammers win (and surely someone is, otherwise they really would have given up by now). Think of the return on investment, considering that spamming a million blogs costs next to nothing. Any purchase is a huge win. Maybe they have ads that pay by the page view as well, every click is worth money to these people.</p>

<h3>Don't Follow Spam, Don't Follow The Legitimate Commenter</h3>

<p>All spam solutions these days attempt to integrate seamlessly with the host site so as not to spoil the experience for the user (except <a href="http://en.wikipedia.org/wiki/Captcha"><abbr title="Completely Automated Public Turing test to tell Computers and Humans Apart">CAPTCHA</abbr>s</a>, which have serious <a href="http://www.w3.org/TR/turingtest/">accessibility issues</a>), but <code class="inline">nofollow</code> takes that benefit of a relevant link away from a legitimate commenter. In an attempt to hurt the spammers, all the real, live, human commenters have taken a hit and this is the crux of the problem with <code class="inline">nofollow</code>. There are <a href="http://nonofollow.net/11-reasons-against-nofollow/">other problems</a>, but this I think is really where it goes wrong.</p>

<h3>We've Beaten Spam, Lose The <code class="inline">nofollow</code></h3>

<p>Yes <em>and</em> no. <code class="inline">nofollow</code> with all it's issues still had some principles about it. No spam defence is 100% effective either, so if something does slip through, taking <code class="inline">nofollow</code> away awards the spammer a victory, until you get around to deleting it of course. <a href="http://foolswisdom.com/do-follow-wordpress/">Remove <code class="inline">nofollow</code></a> from Wordpress? I don't think we are ready for this yet. This had almost made my mind up on the matter, until I read <a href="http://dougal.gunters.org/blog/2007/02/15/follow-you-follow-me">Dougal's post</a> and discovered <a href="http://kimmo.suominen.com/sw/dofollow/">Kimmo Suominen's dofollow plugin</a>.</p>

<p>The spam filters, my moderation (if you put more than one link in a post I do get suspicious I'm afraid) and finally checking every comment that is posted all keep my blog clear of spam. I can't guarantee that every comment will be caught before being posted, but I <em>can</em> guarantee that no spam comment is going to last longer than a couple of days. That is why I have activated the plugin and why, given a couple of days, any links in comments will lose the <code class="inline">rel="nofollow"</code> attribute.</p>

<p>There are a <a href="http://andybeard.eu/2007/02/ultimate-list-of-dofollow-plugins-banish-nofollow-from-comments-and-trackbacks.html">range of dofollow plugins</a> available (thanks <a href="http://weblogtoolscollection.com/archives/2007/02/18/dofollow-plugins/">Weblog Tools Collection</a>), so if you want to join the revolution, you have plenty of choice.</p>

<p>This is one more way to show strength against the spammers. No longer will relevant links be affected by spam protection, but no spam will appear either. I really believe we are winning the battle against comment spam now. They may still spam, but it's not going to bother me or my readers. Remove <code class="inline">nofollow</code> from Wordpress? Not yet, but integrate this plugin and give everyone the choice, that would be a spirited thing to do.</p>
