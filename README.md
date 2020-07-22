
<a href="https://www.jahia.com/">
    <img src="https://www.jahia.com/modules/jahiacom-templates/images/jahia-3x.png" alt="Jahia logo" title="Jahia" align="right" height="60" />
</a>

Article
=======

This module defines an object of type “article” that is very structured and complete. It combines a title, an 
introduction (both unique), and a set of paragraphs based on my module "main content". The purpose 
section also defines the ability of each paragraph to add an insert (highlights or quote) that will fit within the 
text on the right or left of it. 
 
This module is a good example for integrators who wish to understand how module inheritance works and 
to develop components themselves, extending or integrating other objects. 


<pre><code> 
[jnt:paragraph] &gt; jnt:mainContent 
 insertText (string, richtext) i18n 
 insertType (string,choicelist[resourceBundle]) = quote indexed=no &lt; quote, exergue 
 insertPosition (string,choicelist[resourceBundle]) = left indexed=no &lt; left, right 
 insertWidth (long) = "150" indexed=no 
 
[jnt:article] &gt; jnt:content, jmix:editorialContent, mix:title, jmix:tagged 
 intro (string, richtext) i18n 
 + * (jnt:paragraph) 
</code></pre>

## Open-Source

This is an Open-Source module, you can find more details about Open-Source @ Jahia [in this repository](https://github.com/Jahia/open-source).
