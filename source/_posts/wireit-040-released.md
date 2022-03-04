title: WireIt 0.4.0 released
tags:
  - release
  - smd
  - visual
  - WireIt
  - xproc
id: 145
categories:
  - inputEx
  - WireIt
  - YUI Library
date: 2009-05-17 14:39:26
lang: en
---

The long awaited release of WireIt is finally here ! Awaited indeed, since a major bug was still present in version 0.3.0, preventing it to work on IE. It has been fixed for a long time on the repository but has discouraged many people using WireIt (hopefully not too much...).

**What’s new in version 0.4.0 ?**

*   inputEx integration: [inputEx](http://javascript.neyric.com/inputex "inputEx") is another of my YUI libraries, to create fields and forms. Through a new class called "FormContainer", you can now build WireIt containers using the advanced forms options from inputEx. The value is saved at the layer level for you through [Layer.getWiring](http://javascript.neyric.com/wireit/doc/WireIt.Layer.html#method_getWiring "WireIt documentation")

*   WiringEditor: This is my favorite feature. While still largely incomplete, the Wiring Editor provide a  full-blown interface to create _visual languages_. **It takes care of most of the interface you might want to build a visual editor on top of WireIt**. The language definitions are written in JSON, I hope this will greatly reduce the learning curve of WireIt.  The transparent ajax communication with the database is handled through a [SMD webservice using YUI-RPC](http://javascript.neyric.com/blog/2009/03/06/inputex-022-smd-yui-rpc/). WireIt provides a simple php backend that stores the JSON wiring states in MySql (used for the demos on wireit's website).

*   new options:

    *   terminals position in containers: {top: , left: , right: , bottom: } instead of [x,y]
    *   Terminal.alwaysSrc : force this terminal to be the _source_ element in every connected wires
    *   Container.preventSelfWiring : prevent connections between two terminals of this container

*   Four Wire methods for handling mouse events. You can override them for a custom use :

    *   [onWireClick](http://javascript.neyric.com/wireit/doc/WireIt.Wire.html#method_onWireClick)
    *   [onWireIn](http://javascript.neyric.com/wireit/doc/WireIt.Wire.html#method_onWireIn)
    *   [onWireOut](http://javascript.neyric.com/wireit/doc/WireIt.Wire.html#method_onWireOut)
    *   [onWireMove](http://javascript.neyric.com/wireit/doc/WireIt.Wire.html#method_onWireMove)

*   API Documentation with YUI Doc (much more precise on properties and events)

*   Layer Map is now clickable and draggable. It will move the linked layer accordingly.

*   IE Bug fix ! (finally)

*   Moved to github for git repository and better wiki
<div style="width: 425px;text-align: left"></div>
<div style="width: 425px;text-align: left">**Build visual languages applications !**</div>
It's now pretty easy to build visual languages applications. (or at least, prototype them...).

You can follow some projects on [http://github.com/neyric/wireit/network](http://github.com/neyric/wireit/network). I'm especially looking forward to [LeifW](http://github.com/LeifW/wireit/tree/master) [XProc](http://www.w3.org/TR/xproc/) Visual Editor

Here is a little presentation that I published on [WireIt's homepage](http://javascript.neyric.com/wireit) :
<div style="width: 425px;text-align: left"></div>
<div style="width: 425px;text-align: left"></div>
<div style="width: 425px;text-align: left">**
**</div>
<div style="width: 425px;text-align: left"></div>
<div style="width: 425px;text-align: left">**
**</div>