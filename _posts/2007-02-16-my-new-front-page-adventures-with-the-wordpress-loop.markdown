---
layout: post
title: "My New Front Page: Adventures With The Wordpress Loop"
wordpress_id: 72
wordpress_url: http://www.unintentionallyblank.co.uk/2007/02/16/my-new-front-page-adventures-with-the-wordpress-loop/
date: 2007-02-16 00:23:31 +00:00
---
<p>If you are looking at the front page of my blog, you will see the layout of the posts is quite different to most other blogs. The home page displays the latest post, then the latest article, then a few more posts. There are a number of posts out there showing <a href="http://www.maxpower.ca/wordpress-hack-sticky-adhesive-kubrick/2005/05/03/">how to display a sticky post</a>, even displaying a <a href="http://shaunandrews.com/2006/07/14/wordpress-sticky-posts/">news post as sticky for only a day or two</a> but none of them quite did everything I wanted them to do. So, after a while looking through the <a href="http://codex.wordpress.org/The_Loop">codex article on the loop </a> and scratching my head, I finally got down and worked it out myself, here's how.</p>

<h3>First A Bit About What I Wanted And Why</h3>

<p>I started this blog in order to encourage myself to learn how to code on the web and to share that with anyone else trying. I started doing so, adding commenting on industry news every now and again too, and then <a href="http://www.unintentionallyblank.co.uk/2006/09/30/out-of-the-blue-a-job/">I got a job</a>. This decreased the time I could allocate to teaching myself about the web and posting on the blog, so I had to refactor my priorities a bit. I wanted to use the blog for personal thoughts and opinions as well as writing on my chosen topic. However, I didn't want to fill up my front page with totally irrelevant stuff, thus I had the idea of an articles section that displayed the latest article on the front page regardless of how many other posts were made. It would be a place I could advertise as my best posts.</p>
<p>I looked around and found many different ways of creating sticky posts that stuck right at the top of the page. This isn't what I wanted, as visitors to the front page would see the first article over and over and think there were no updates. These sticky posts are all very well for news stories that will be replaced after a while, but not long term articles. So I got to work (and got it wrong first time) and now you see the results on my blog.</p>

<h3>The Basics</h3>

<p>Pulling this off was harder than I thought and here is why. To do this I needed to display the latest post, no matter what, then I needed to display the latest article (from the articles category), given that it wasn't the latest post. If the two coincided, I needed to show the next latest article. Finally, I had to show a few more posts beow them, ensuring that neither the latest post, nor the latest article appeared.</p>

<p>Tomorrow, I will show the code and how many times I had to go around the Wordpress Loop to achieve this. Ultimately, I think this is a different concept to sticky news posts and I hope it can help out.</p>
