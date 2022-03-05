title: 'inputEx 0.2.2, SMD and YUI-RPC'
tags:
- JSON Schema
- smd
- yui
id: 144
categories:
- [Projects, inputEx]
- [Software, Javascript]
date: 2009-03-06 22:27:14
lang: en
---

**0.2.2 release**

Although we didn't add any new field in this release, inputEx 0.2.2 still brings a new set of options and bugfixes. (see the [changeset](http://javascript.neyric.com/inputex/version.txt) for details)

The most significant part of this version, which I'm pretty excited about, resides in the following components :

*   improved [JSON-schema](http://www.json.com/json-schema-proposal/) support (example [one](http://javascript.neyric.com/inputex/examples/json-schema.html) and [two](http://javascript.neyric.com/inputex/examples/json-schema2.html))
*   [yui-rpc](http://github.com/neyric/yui-rpc/tree): A _Service Mapping Description_ (SMD) client for YUI, based on the [SMD Proposal](http://groups.google.com/group/json-schema/web/service-mapping-description-proposal)
*   inputex-rpc: automatically builds a form from a SMD
*   [JsonTreeInspector widget](http://javascript.neyric.com/inputex/examples/json-tree-inspector.html): simple widget to display a JSON tree
*   The [SMD-tester](http://javascript.neyric.com/inputex/examples/rpc/smd-tester.html) utility
**YUI-RPC or "What the heck is _Service Mapping Description (SMD)"_ ?**

Abstract from the [proposal](http://groups.google.com/group/json-schema/web/service-mapping-description-proposal):
> _A Service Mapping Description (SMD) is a **JSON** representation describing web services. An SMD can defines the various aspects of a web service such that clients can coherently interact with the web services. An SMD **can be used by generic tools to generate interfaces, human and programmatic**, to access available web services. A wide array of web services can be described with SMD i**ncluding REST services and JSON-RPC services**. The SMD format is designed to be flexible, compact, simple, readable, and easily implemented._
SMD is basically a [WSDL](http://www.w3.org/TR/wsdl)-like, but for JSON. It's so much simpler to implement that I regret the time I spent on WSDL ! Instead of using XML, XML-RPC and SOAP, we are now able to play with technologies better suited for the browser environment: JSON, JSON-RPC, REST, JSONP etc...

Concerning the "programmatic interface", the dojo framework already provides a [remote procedure calls module](http://dojotoolkit.org/book/dojo-book-0-9/part-3-programmatic-dijit-and-dojo/ajax-transports/remote-procedure-call-rpc). However, since I'm a YUI-user, I had to re-implement it on YUI, which gave birth to [YUI-RPC](http://github.com/neyric/yui-rpc/).

**How inputEx is playing with SMD**

From the inputEx point of view, the best part of SMD is that the method parameters are defined using... JSON-Schema !

inputEx was already able to build a form from a JSON-Schema, so it was pretty [trivial](http://javascript.neyric.com/inputex/doc/js_docs_out/inputex-rpc.js.html) to implement an **automated form generation to call webservices based on a SMD**. Here is [an example of such a form using a SMD for Yahoo! search](http://javascript.neyric.com/inputex/examples/rpc/example.html).

I believe this will help a lot in **decoupling interfaces and webservices**. To prove my point, I quickly wrote [some SMDs for popular webservices](http://javascript.neyric.com/inputex/examples/rpc/smd/) like Yahoo! search, pipes, Twitter, geonames, delicious, flickr, YQL and others, and built a tiny interface, the **[SMD-tester](http://javascript.neyric.com/inputex/examples/rpc/smd-tester.html)**, to build the forms, call those webservices, and display the response.

Have fun !