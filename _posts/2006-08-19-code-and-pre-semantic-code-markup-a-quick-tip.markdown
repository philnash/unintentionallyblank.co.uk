---
layout: post
title: "&lt;code&gt; and &lt;pre&gt;: Semantic Code Markup: A Quick Tip"
wordpress_id: 20
wordpress_url: http://www.unintentionallyblank.co.uk/2006/08/19/code-and-pre-semantic-code-markup-a-quick-tip/
date: 2006-08-19 12:05:02 +01:00
---
<p>I recently came across some problems whilst posting code on this blog. I was showing the javascript for my font sizing and stylesheet switching scripts and found that it was often awkward to format and display the code properly, even though I am using styled code tags around it.</p>
<h3>The Problems</h3>
<p>Indenting, line breaks... all the formatting that I had applied to make the code clearer to myself disappeared. Then I remembered the <abbr title="HyperText Markup Language">HTML</abbr> element that retains that formatting; the <pre><code>&lt;pre&gt;</code></pre> (preformatted text) element. Using <code class="inline">&lt;pre&gt;</code> instead of <code class="inline">&lt;code&gt;</code> would make the script appear clearer and easier to understand. However, semantically the code element <q cite="http://www.w3.org/TR/html401/struct/text.html#edef-CODE" title="The W3C specification on the code element">Designates a fragment of computer code.</q> I want my markup to remain as meaningful as possible so what is the solution?</p>
<h3>Solving the Problem</h3>
<p>For a start, <em>do not</em> enclose pre elements inside code elements! I tried this and it causes all sorts of problems! The solution lies in <abbr title="Cascading Style Sheets">CSS</abbr>. The pre element is the only one to use the rare CSS attribute <code class="inline">{ white-space: pre; }</code> as standard. Applying this rule to the code element as well, and using it to mark up computer code retains the meaning in your markup as well as the formatting. What could be simpler?</p>
<p>One thing though: watch out for long lines in your code, <code class="inline">{ white-space: pre; }</code> doesn't enforce natural line breaks so some code may spill over the edge of your layout. Sparing use of the <code class="inline">&lt;br&gt;</code> tag will fix that though, just make sure you indicate line breaks where they wouldn't normally occur.</p>
<h3><abbr title="Internet Explorer">IE</abbr> Spoils The Party</h3>
<p>I couldn't expect something this simple to work in IE though. If you have a paragraph with a code element inline, IE forgets that paragraphs <em>do</em> wrap as normal and stretches the rest of the paragraph across the page. Thankfully, if you are slipping a small piece of code into a a paragraph it is unlikely to be on two lines itself. All you need to do then, is create a class, "inline" for example, and apply the default white-space attribute to it as so:</p>
<pre><code>code.inline {
  white-space:normal;
  }</code></pre>
<p>Now any inline code segments will not break in IE and all the markup is semantically happy and formatted as you always intended it to be.</p>
