--- 
layout: post
title: The Nationwide Takes A Step Forward
wordpress_id: 205
wordpress_url: http://www.unintentionallyblank.co.uk/?p=205
date: 2008-04-22 22:50:00 +01:00
---
<p>It seems like a long time since I wrote about <a href="http://www.unintentionallyblank.co.uk/2007/10/18/web-accessibility-javascript/">the importance of making websites work without JavaScript</a>, a post that uncovered the <a href="http://www.nationwide.co.uk">Nationwide building society</a> locking customers without JavaScript enabled out of their site with nothing but a blank page to look at. The post elicited <a href="http://www.unintentionallyblank.co.uk/2007/10/18/web-accessibility-javascript/#comment-11751">a response</a> from <a href="http://accessify.com/">Ian Lloyd</a> from the Nationwide web team, saying that they would look into the issue.</p>

<p>While it has been a long time before I noticed any difference, an online banking site can't be changed up that quickly, in the last month or so I did notice a difference to the site. Jumping immediately to my "disable JavaScript" button I proceeded to try to sign on to the online banking section. I was met with a message:</p>

<blockquote cite="https://olb2.nationet.com/default.asp"><p>Nationwide's Internet Banking requires JavaScript and cookies to be enabled. It appears that your browser does not support JavaScript, or you have disabled it. Please re-enable JavaScript or try accessing this site using a different browser.</p></blockquote>

<p>The Nationwide have taken the first step towards accessibility for those without JavaScript enabled, a <code class="inline">&lt;noscript&gt;</code> element prints out the above text. While I don't claim any knowledge of the stringent security measures that banks must take, I am still quite sure that JavaScript should not be necessary to log on. To make sure of this, I checked with my other online bank, the <a href="http://www.hsbc.co.uk">HSBC</a>. I was able to log on without JavaScript enabled.</p>

<h3>Small Steps</h3>

<p>While a <code class="inline">&lt;noscript&gt;</code> element really is the least anyone can do by notifying users that they can't use the site without JavaScript, it is a start. As I said above, changing an online banking system is not a trivial matter, so I appreciate what the Nationwide have done so far. Let's hope that this change can inspire further work at the Nationwide, and anywhere else where JavaScript is required.</p>
