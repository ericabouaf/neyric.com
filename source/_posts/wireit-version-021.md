title: WireIt version 0.2.1
tags:
  - javascript
  - library
  - WireIt
  - wiring
id: 135
categories:
  - WireIt
date: 2008-01-26 16:04:11
---

I made a few updates this week-end. They mostly concern the Container
and Layer classes.

Here are the changes:

*   new Layer.getWiring function to save the state of the wiring. It
can be customized by overriding Container.getConfig
*   jsBox updated to use the Layer.getWiring function
*   no default width for containers so they can auto-adjust to the
content
*   Layer.addContainer and Layer.addWire now returns the created
instance
*   Added the method Container.redrawAllWires and
Terminal.redrawAllWires
*   Added Layer.removeAllContainers
*   adds a "body" div to the container
*   CSS updates on Containers and Layers
*   adds a focus CSS class on the last mousedown-ed container in the
layer
*   bugfixes (events "addWire" and "removeWire" added to WireIt.Layer,
offset in the connections)