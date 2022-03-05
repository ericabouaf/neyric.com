title: Visualize your models
tags:
- graphviz
categories:
- [Software, Ruby on Rails]
date: 2006-10-24 17:43:16
lang: en
---

The ["Visualize Models" plugin](http://visualizemodels.rubyforge.org/) By Nils Franzen will generate .png images from the Rails model files :

(click to enlarge) :

[![](http://visualizemodels.rubyforge.org/typo2.png)](http://visualizemodels.rubyforge.org/typo2.png)

This plugin depends on GraphViz, which you can find [here.](http://www.graphviz.org/)

From your rails application root, run :
<pre>ruby script/plugin install</pre>
<pre>svn://rubyforge.org//var/svn/visualizemodels/visualize_models</pre>
<pre>rake visualize_models</pre>
You'll then find your .png images in the "doc" directory.