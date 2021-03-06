---
layout: post
title: Stylesheet Switcher - Part 2
wordpress_id: 19
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/18/stylesheet-switcher-part-2/
date: 2006-08-18 12:40:59 +01:00
---
<p>Yesterday I began to create a <a href="http://www.unintentionallyblank.co.uk/2006/08/17/the-dom-again-a-style-sheet-switcher/">stylesheet switcher</a> using javascript and the <abbr title="HypreText Markup Language">HTML</abbr> <abbr title="Document Object Model">DOM</abbr>. I finished up with an <a href="http://test.unintentionallyblank.co.uk/switcher.html" title="An example of the stylesheet switcher">example</a> of the work so far, but I failed to address a few of the points in my requirements, namely:</p>
<ul class="arrowlist" style="float:none; clear:none;">
<li>Use a dropdown box to select styles</li>
<li>Populate the dropdown box with stylesheet names from the title attribute of the link tag</li>
<li>Graceful degradation in browsers without script</li>
<li>Future proof javascript</li>
</ul>
<p>Today I will tackle these issues.</p>
<h3>Dropdown Boxes</h3>
<p>This isn't really a javascript issue, but not having had much experience with dropdown boxes, I had to look this up. A dropdown box is an element of an HTML form, so must exist within the form element. However, since we aren't using server side scripts there is no need to give the form a method or an action. In fact, the dropdown box will trigger the script itself. We set up the dropdown box as so:</p>
<pre><code>&lt;form&gt;
&lt;select onChange="setStyleSheet &raquo;<br>
(this.options[this.selectedIndex].text)"&gt;
&lt;option&gt;stylesheet&lt;/option&gt;
...</code></pre>
<p>So we use the function created yesterday to change the stylesheet, but what is <pre><code>this.options[this.selectedIndex].text</code></pre>? I'll break it down:</p>
<dl>
<dt>this.options</dt>
<dd>this refers to the dropdown box and options will be the &lt;option&gt; elements that will populate the list</dd>
<dt>this.selectedIndex</dt>
<dd>selectedIndex returns the position of the option selected (starting with 0)</dd>
<dt>[this.selectedIndex].text</dt>
<dd>appending .text to the selectedIndex means that it will return the text within the option element</dd>
</dl>
<p>In all, when an option is selected, the option text that was selected will be handed to the setStyleSheet function. The only drawback of this method is that the text in each of the options has to match the titles of your stylesheets in order that the function works. This is where javascript steps in again.</p>
<h3>Self Populating Options</h3>
<p>Rather than creating the dropdown box in the HTML source of my site, I decided to let javascript do it. This has two bonuses, firstly a user who has disabled javascript won't see the dropdown box and won't know what they are missing out on (graceful degradation - we don't want a dropdown box on the page if the user won't be able to use the functions) and secondly we can use our functions we came up with yesterday to iterate through the available stylesheets creating an option for each one.</p>
<p>"This will be easy," I thought. So I started writing a whole bunch of document.write(...) statements ready to output the dropdown box. However, there have been changes in what is and isn't allowed within javascript, chages I came across whilst reading about <a href="http://www.bobbyvandersluis.com/articles/goodpractices.php">good javascript practices</a>. I was surprised to see that <a href="http://ln.hixie.ch/?start=1091626816&amp;count=1">document.write will not work with <abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a>. The reasons were compelling enough and, even though I use HTML 4.01 throughout this site, having a script that will work for HTML and XHTML is important for the future.</p>
<h3>The DOM and createElement</h3>
<p>So I needed a new way of dynamically producing a dropdown box. Rather than writing out the HTML with document.write, it turns out that modern javascript programmers create all the objects separately and then add them to the DOM tree. There is a superb <a href="http://www.webreference.com/js/column44/">DOM tutorial</a> at webreference.com, and it taught me everything I needed to know to create my dropdown box. I'll walk through the method then post the code so that you can see how it all happened.</p>
<ol>
<li>Create the form element</li>
<li>Create the select element</li>
<li>Add the onChange attribute to the select element</li>
<li>Append the select element to the form</li>
<li>Get the stylesheets</li>
<li>Get the stylesheet that is currently in use (the preferred stylesheet)</li>
<li>For all the stylesheets:
<ol><li>Get the title of the stylesheet</li>
<li>Create an option element</li>
<li>If the stylesheet is the preferred stylesheet, add the selected attribute to the option element</li>
<li>Create a text node using the title of the stylesheet</li>
<li>Append the text to the option element</li>
<li>Append the option to the select element</li>
</ol></li>
<li>Append the form to the area of the document that you select</li>
</ol>
<p>The last point needs some extra explanation. Due to the nature of creating and appending elements to the DOM tree, rather than writing HTML directly to the page as it is processed, the form element needs to be appended to a relevant element that already exists in the DOM tree. To deal with this I included a parameter in the call of the function. All you need to do is add the id of the element you want the dropdown box to appear in. The code will show how it works.</p>
<pre><code>function linkBox(elementID) {
  var form = document.createElement("form");
  var drop = document.createElement("select");
  drop.setAttribute("onChange",&raquo;<br>
  "setStyleSheet(this.options[this.selectedIndex].text)");
  form.appendChild(drop);
  var stylesheets = getStyleSheets();
  var preferred = getPreferredStyleSheet();
  for (var i=0;i&lt;stylesheets.length; i++) {
    var title = stylesheets[i].getAttribute("title");
    var option = document.createElement("option");
    if (title==preferred) { &raquo;<br>
    option.setAttribute("selected","selected"); }
    var optionText = document.createTextNode(title);
    option.appendChild(optionText);
    drop.appendChild(option);
    }
  document.getElementById(elementID).appendChild(form);
}</code></pre>
<h3>The Final Product</h3>
<p>Here is the final demonstration of the <a href="http://test.unintentionallyblank.co.uk/switcher2.html">stylesheet switcher with dropdown box</a>. You can <a href="http://test.unintentionallyblank.co.uk/switcher.js">download the full script</a> here.</p>
<p>To use the script, just add your stylesheets and the script to the header as <a href="http://www.unintentionallyblank.co.uk/2006/08/17/the-dom-again-a-style-sheet-switcher/">yesterday</a> then place the following script where you want your dropdown box to appear:</p>
<pre><code>&lt;script type="text/javascript" language="javascript"&gt;<br>
&lt;!&#45;&#45;<br>
linkBox('elementID');<br>
//&#45;&#45;&gt;<br>
&lt;/script&gt;</code></pre>
<p>I hope this will be useful, for both accessibility and adding new styles to a site. If you do use it and would like to show off (or have problems with it), please <a href="http://www.unintentionallyblank.co.uk/contact/">let me know</a>. Also, if you have any ideas for accessibility driven bits of code that either exist and need updating/explaining, or should exist, tell me and I will see what I can do.</p>
<p><ins>Problems! Turned out that this doesn't work in Internet Explorer (oh don't we love it so). You can, however, <a href="http://www.unintentionallyblank.co.uk/2006/08/30/stylesheet-switcher-part-3-revenge-of-ie/">find out how I fixed it</a>.</ins></p>
