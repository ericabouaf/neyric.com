title: WireIt 0.2.0 released
tags:
  - javascript
  - library
  - WireIt
  - wiring
id: 134
categories:
  - WireIt
date: 2008-01-05 01:12:09
lang: en
---

![](http://javascript.neyric.com/wireit/jsBox.gif)

I just released the new 0.2.0 version. You can download it [here](http://wireit.googlecode.com/files/WireIt-0.2.0.zip).

Here are the main changes:

*   **2 new classes were added: _WireIt.Container_ and _WireIt.Layer_**
Every project you might start using WireIt needs a widget that could contain Terminals, and that could be moved around. This is the goal of WireIt.Container.
The Layer class creates a DIV element that can contain multiple containers and wires. It will be useful to save the state of the containers and connections between the terminals. (It also provide an extensible frame with scrollbars.)
*   **Custom events added to create richer interactions when editing the wires.**
*   **A minified version built with [YUI Compressor](http://developer.yahoo.com/yui/compressor/).**
This javascript minifier is almost perfect: I just wish you could have multiple input files...
The result file is just below 20k.
*   [**jsBox**](http://javascript.neyric.com/wireit/test/jsBox/jsBox.html): This is a sample application using WireIt.
Create boxes containing javascript functions, connect them together, and run your program !
*   Many new configuration options, configurable CSS class names, and some new methods in the Wire and Terminals classes.
Don't forget to give your feedback in the [forum](http://groups.google.com/group/wireit) !

Have fun !