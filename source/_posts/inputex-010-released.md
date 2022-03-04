title: inputEx version 0.1.0 released
tags:
  - inputEx
  - javascript
  - library
  - yui
id: 70
categories:
  - inputEx
  - YUI Library
date: 2008-05-07 14:12:48
lang: en
---

**It's finally time !**

I just finished the first public version of inputEx. I had this project in my bag since summer 2007.

Visit the website at [http://javascript.neyric.com/inputex](http://javascript.neyric.com/inputex "inputEx javascript library") . Here is a short introduction from the documentation :
> ## Introduction
> 
> [inputEx](../..) is a javascript library to **build fields and forms**.
> It can also be considered as an interface framework, since it provides a good structure to [create you own fields](create_field.html).
> 
> It is built on top of the [YUI library](http://developer.yahoo.com/yui/), and we tried to be as close as possible to the YUI philosophy.
> 
> It is of course fully skinable using CSS and currently supports Firefox 1.5+, Safari 2.0+, IE 7.0 and Opera 9+.
> 
> ## A unique field library
> 
> With so many form libraries out there, why would we create another one ?
> 
> *   HTML fields/forms are **very** limited
> *   no existing good input library for YUI (let me know if I'm wrong !), except YUI widgets
> *   it's not all about validation !
> Here are the features we implemented that makes inputEx unique :
> 
> *   **json configuration** for each field
> *   **complex data structures** (list/objects/tree/list of urls/objects of objects etc...)
> *   **composition** between the fields (for "meta"-fields such as InPlaceEdit,List,Tree,Pair,...)
> *   **javascript object mapping** for greater interactivity
> *   a **common "updated" event** to handle different browsers and different field interactions
> 
> ## No HTML ?
> 
> InputEx uses **no html** (it is the opposite of unobtrusive librairies): all the fields and forms are configured **using [json](http://json.org/)**, then rendered by [manipulating the DOM](dom_helpers.html).
> It is therefore a library to create **javascript web applications, not webpages**.
> 
> This approach has a great advantage: adding/modifying a field is made in **one place only**. Combined with
> the json configuration that can be stored server-side, it makes customization of your web application very easy.
> 
> ## Help Us
> 
> It is very easy to help us improving the library :
> 
> *   **Extend the library**: send your custom fields to the [wiki](http://code.google.com/p/inputex/w/list), it might help others !
> *   **Give your feedback** on the [forum](http://groups.google.com/group/inputex/)
> *   [Report](http://code.google.com/p/inputex/issues/list) any bug
> 
> ## Other resources
> 
> If you didn't find what you were looking for, please visit these websites :
> 
> *   [Examples](http://javascript.neyric.com/inputex/doc/js_docs_out/examples.html) - many examples for each field
> *   [Forum](http://groups.google.com/group/inputex/) - discussions about inputEx
> *   [Blog](http://javascript.neyric.com/blog/category/inputex/) - inputEx news
> *   [Wiki](http://code.google.com/p/inputex/w/list) - community ressources
> *   Contact the author: [inputex@neyric.com](mailto:inputex@neyric.com)