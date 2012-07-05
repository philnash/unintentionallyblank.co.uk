---
layout: post
title: When Even The Internet Is Against You
wordpress_id: 114
wordpress_url: http://www.unintentionallyblank.co.uk/2007/04/20/when-even-the-internet-is-against-you/
date: 2007-04-20 00:42:02 +01:00
---
<p>This week I produced a relatively simple bit of code for someone to use on a few websites. All I wanted to do was take a contact form that I had already written, simplify it, comment it and send it on. Sounds easy, why wasn't it then?</p>

<p>I learnt the <abbr title="Hypertext PreProcessor">PHP</abbr> for creating a contact form last summer. It is one of the obvious things to do first as a contact form is a standard occurrence on any site. After gathering the information from the <abbr title="Hyper Text Markup Language">HTML</abbr> form all that is really left to do is create the following line:</p>

<pre><code>mail($to, $subject, $message, $headers);</code></pre>

<p>Having completed this, I uploaded a test and tried it out, visited my email account to see the test email arrive and... <em>nothing</em>! I checked and re-checked the code. I eventually found that I had a typo in one variable name, but that wouldn't have stopped the message being sent, just not deliver any message. Minutes and hours of tinkering and looking on in disbelief with the occasional test passed. Eventually I received an email!</p>

<h3>Success?</h3>

<p>The email had no body, but the subject and the fact that it arrived were all right. I fixed up whatever had caused the body to not be sent (I won't be changing variable names without judicious use of find and replace again) and sent another test. It didn't come through.</p>

<p>Something was really against me, and as I began to decide to give up as I clearly had no coding ability whatsoever the test came through and it was all correct. As I went to send the completed code off another test came through, another failed one that had no body. Then two more arrived. It was late now and I wanted to go to sleep, but before I could log out one final test email arrived.</p>

<h3>The Morning After</h3>

<p>Whilst I had been sleeping, Gmail and my mail function had clearly got together and sniggered as they annoyed me further. I awoke to find the first three test emails I sent lurking in my inbox. What could have been a ten minute job turned out to be 3 hours of staring at correct code wondering what was wrong! When even the Internet is against you, what chance do you have? I think I'll stick to <a href="http://www.unintentionallyblank.co.uk/category/htmlxhtml/"><abbr title="Hyper Text Markup Language">HTML</abbr></a>, <a href="http://www.unintentionallyblank.co.uk/category/css/"><abbr title="Cascading Style Sheets">CSS</abbr></a> and <a href="http://www.unintentionallyblank.co.uk/category/javascript/">Javascript</a>. Oh to be a front end developer!</p>
