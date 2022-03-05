title: 'WireIt: a javascript wiring library'
tags:
- library
- wiring
- yui
categories:
- [Projects, WireIt]
- [Software, Javascript]
date: 2007-12-06 12:45:28
lang: en
---

I'm pleased to announce the first release of [WireIt](http://javascript.neyric.com/wireit/) (version 0.1) !

[WireIt](http://javascript.neyric.com/wireit/) is a javascript library that allows you to create cool wires like Yahoo Pipes. It is built upon:

*   the [CANVAS tag](http://developer.mozilla.org/en/docs/Canvas_tutorial) to render the wires
*   the [YUI Library](http://developer.yahoo.com/yui/) v2.3.1
*   [excanvas for IE support](http://excanvas.sourceforge.net/)
It comes with some examples (see the [home page](http://javascript.neyric.com/wireit/)) and an application example, the [Planar Game](http://javascript.neyric.com/wireit/test/planarGame/planarGame.html).

Why would you make such a library ? After playing a lot with Yahoo! Pipes, I realized how powerful it was to create mashups. I was already used to [visual programming Languages](http://en.wikipedia.org/wiki/Visual_programming_language) like PureData or Mac OS Automator, but they're definitly not able to do mashups.

However, Yahoo Pipes has this **big inconvenient to run your pipes on their web servers**. It has at least two disadvantages. First, it means we will always be restricted to the modules and types they implemented. You could always create a restful webservice and wrap it into a pipe, but the execution time blows up. Second disadvantage, you have to be careful with your data privacy. Indeed, I would like to create some Mashups that could mix with my private data in a more secure way.

That's how I started to develop a Yahoo pipes-like application, and how I ran into this stumble block: "How the hell did they do those pipes ?".

Waiting for your feedback,
Eric