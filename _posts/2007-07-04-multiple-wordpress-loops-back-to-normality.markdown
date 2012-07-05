---
layout: post
title: "Multiple WordPress Loops: Back To Normality"
wordpress_id: 136
wordpress_url: http://www.unintentionallyblank.co.uk/2007/07/04/multiple-wordpress-loops-back-to-normality/
date: 2007-07-04 21:39:41 +01:00
---
<p>Having hacked up the <a href="http://www.unintentionallyblank.co.uk/2007/02/18/adventures-with-the-wordpress-loop-sticky-articles/">front page of my WordPress theme with three loops</a> recently, I actually broke a couple of parts of the page. The previous posts link that you can see at the bottom of the <a href="http://www.unintentionallyblank.co.uk">front page</a> now, stopped working because of the three different loops I was using.</p>

<p>At the time I replaced them with a link to the Archives, but I later received a message from <a href="http://blogosquare.com">Hans</a> to tell me that the link was both not expected to visit the archives and wasn't as useful as a link to the previous 5 posts. At the time I said I would do something about it, displaying bad usability on this site is against what I am trying to achieve, but didn't get the chance, until now.</p>

<h3>Page 2 Of The Front Page</h3>

<p>Adding the previous and next posts links back into the theme was the easy part, however clicking on them just kept returning the front page. I needed to use the conditional tags from WordPress to work out when I was on the front page. I started off with a simple</p>

<pre><code>&lt;?php if (is_home()) { ?&gt;
// The hacked up loops
&lt;?php } else { ?&gt;
// The normal loop for pages other than the front page
&lt;?php } ?&gt;</code></pre>

<p>However, this didn't work as WordPress considers the second page of the front page to still be home and I still had the same problem.</p>

<h3>Some Creative Searching</h3>

<p>I headed to <a href="http://www.google.com">Google</a> for some inspiration and after some creative searches (that I can't replicate now) I found a forum topic on restricting Google to certain pages of your site that gave me the answer. Why a post in an <abbr title="Search Engine Optimisation">SEO</abbr> forum topic was returned, I have no idea, but it helped out. I had to add the following code:</p>

<pre><code>&lt;?php if (is_home() <strong>&amp;&amp; $paged &lt; 2</strong>) { ?&gt;
// The hacked up loops
&lt;?php } else { ?&gt;
// The normal loop for pages other than the front page
&lt;?php } ?&gt;</code></pre>

<p>Now, if you use the previous link at the bottom of the home page you are taken to a normal looking list of 5 not-quite-so-recent posts in normal format, while the front page still highlights the latest article.</p>

<h3>Credit</h3>

<p>Having checked through my history, it was the Webmaster World forums, where I found <a href="http://www.webmasterworld.com/google/3097706.htm">my answer</a> in the post from Ma2T. I also want to thank <a href="http://imjtk.com">JTK</a> for <a href="http://imjtk.com/wordpress-theme-issue-du-jour.php">reminding me of this fix</a>.</p>

<p>If you have messed around with your WordPress loops, make sure these links still work. If they don't, try the above. Let me know if you have any other problems with multiple loops too, I would love to help.</p>
