--- 
layout: post
title: Unobtrusively Add NOSCRIPT Elements With JavaScript
wordpress_id: 202
wordpress_url: http://www.unintentionallyblank.co.uk/2008/03/17/unobtrusively-add-noscript-elements-with-javascript/
date: 2008-03-17 08:54:24 +00:00
---
<p>I had a giggle this weekend thanks to a <a href="http://twitter.com/codepo8/statuses/771721379">Christian Heilemann tweet</a>. Using a <a href="http://my.opera.com/hallvors/blog/2008/03/13/noscript-for-nerds-stuff-that-disappears?cid=4880054">JavaScript <code class="inline">document.write</code> to print out a <code class="inline">&lt;noscript&gt;</code> element</a> is beyond believable. The whole thing is its own paradox, <code class="inline">document.write</code> wll only fire if JavaScript is enabled and <code class="inline">&lt;noscript&gt;</code> can only be seen when JavaScript is disabled, the fact that the ad script that was responsible for the script also left the tag open and messed up the rest of the site only compounds the whole thing.</p>

<p>Stunning!</p>
