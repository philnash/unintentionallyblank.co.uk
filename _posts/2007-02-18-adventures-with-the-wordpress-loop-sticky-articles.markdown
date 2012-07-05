---
layout: post
title: "Adventures With The Wordpress Loop: Sticky Articles"
wordpress_id: 73
wordpress_url: http://www.unintentionallyblank.co.uk/2007/02/18/adventures-with-the-wordpress-loop-sticky-articles/
date: 2007-02-18 13:50:24 +00:00
---
<p>Having <a href="http://www.unintentionallyblank.co.uk/2007/02/16/my-new-front-page-adventures-with-the-wordpress-loop/">decided to mix up my front page</a> with a latest article section, I then had to work out how to manipulate the <a href="http://codex.wordpress.org/The_Loop">Wordpress Loop</a> in order to display what I wanted. It took quite a lot of thinking, one wrong (oh so wrong) attempt and then I cracked it. Please note, this involves playing about with the index.php file in your theme, if you don't want to spoil anything, please <em>back it up</em>! Now, here's how to do it:</p>

<h3>The Normal Loop</h3>

<p>The wordpress default theme starts the loop with</p>

<pre><code>&lt;?php if ( have_posts() ) : while ( have_posts() ) :
the_post(); ?&gt;</code></pre>

<p>and ends with</p>

<pre><code>&lt;?php endwhile; ?&gt;</code></pre>

<p>In between are the functions to dislpay your posts, their titles, the permalink, the date, the list goes on. Editing the bit inside changes how each post is displayed, but it can't change which posts are displayed. For that you need to play with the loop itself.</p>

<h3>Once, Twice, Three Times <code class="inline">WP_Query</code></h3>

<p>Remember that I wanted the latest post, then the latest article, then the remaining recent posts. To do this, I have to, in effect, run three loops. The first will select my latest post.</p>

<pre><code>&lt;?php $my_query = new WP_Query('showposts=1');
while ($my_query->have_posts()) : $my_query->the_post();
$do_not_duplicate = $post->ID; ?&gt;</code></pre>

<pre><code>// do stuff </code></pre>

<pre><code>&lt;?php endwhile; ?&gt;</code></pre>

<p>The first line starts a new query with the parameter that only one post is shown. The second line is the equvalent of the first line of the normal loop and the third line will become clear soon. The second loop starts off again in a similar way, creating a new query, this one is for the latest article though.</p>

<pre><code>&lt;?php $my_query = new WP_Query('showposts=2&amp;cat=31');
while ($my_query->have_posts()) : $my_query->the_post();
if ( $post->ID == $do_not_duplicate ) continue;
update_post_caches($posts);
$do_not_duplicate = $post->ID; ?&gt;</code></pre>

<pre><code>// do stuff </code></pre>

<pre><code>&lt;?php break; ?&gt;
&lt;?php endwhile; ?&gt;</code></pre>

<p>The first line picks the new query again, this time choosing to show 2 posts (more on that in a minute) and picking them from category 31, my <a href="http://www.unintentionallyblank.co.uk/category/articles">Articles</a> category. The third line is where this starts to get interesting. This checks that the selected article hasn't already been posted in the first loop. If it has, the <code class="inline">continue</code> action moves the loop onto the next article. This forms the reason to why I made the query choose two posts from the articles category. I only want to display one, so if the first post is not the same as the first article, then the <code class="inline">break</code> at the end of the loop jumps it straight out before it can loop round for the second article.</p>
<p>The <code class="inline">update_post_caches($posts)</code> is straight out of the codex, to ensure that plugins work happily with these multiple loops. Also, once the code selects the correct article to display it notes the ID of the post in the $do_not_duplicate variable, but more on that after we see the third loop:</p>

<pre><code>&lt;?php query_posts('showposts=4&amp;offset=1'); ?&gt;</code></pre>

<pre><code>&lt;?php if ( have_posts() ) :
 while ( have_posts() ) : the_post();
if( $post->ID == $do_not_duplicate) continue;
 update_post_caches($posts);  ?&gt;</code></pre>

<pre><code>// do stuff</code></pre>

<pre><code>&lt;?php endwhile; ?&gt;</code></pre>

<p>The final loop kicks off with the first line selecting what we want to display using the normal <code class="inline">query_posts</code> call. In this case, we show 4 posts, but not the first one by offsetting by one. The next two lines are straight out of the normal loop as this is the one we are running now. Line four ensures that we do not display the article we fetched in the second loop, the first post is already missed by the offset in the query. Finally we <code class="inline">update_post_caches($posts)</code> once more in order to be friendly to plugins.</p>

<h3>That's It</h3>

<p>If you want to display a latest article of some sort, all you have to do now is copy the above code and insert the relevant template tags that you want to use where it says "do stuff". I'd love to know if this helps anyone, either in their understanding of the loop or as a solution to the problem I first posed. This way worked for me, but if there is a better way, I would love to know!</p>

<p>Disclaimer: This worked for me using Wordpress 2.1 and my own theme. Please back up your theme before trying this, just in case. If you have any difficulties, please leave me a comment and I will respond.</p>

<p>Thanks goes to whoever wrote the <a href="http://codex.wordpress.org/The_Loop">codex article on the loop</a> and <a href="http://www.maxpower.ca/wordpress-hack-sticky-adhesive-kubrick/2005/05/03/">Maxpower</a> and <a href="http://shaunandrews.com/2006/07/14/wordpress-sticky-posts/">Shaun Andrew</a>'s articles on sticky posts which helped me along brilliantly.</p>
