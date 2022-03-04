title: WebHookIt first release - developer preview
tags:
  - http
  - nodejs
  - webhookit
  - webhooks
  - WireIt
id: 234
categories:
  - Node.js
  - Server-side javascript
  - Uncategorized
  - WebHookIt
  - WireIt
  - YUI Library
date: 2011-01-29 19:47:35
lang: en
---

I'm very pleased to announce the birth of [WebHookIt](http://neyric.github.com/webhookit/) !
> Visual scripting for the web, Pipes for hackers, using [Node.js](http://nodejs.org/), and [mongoDB](http://www.mongodb.org/)
WebHookIt is kind of an open-source Yahoo! Pipes, but with a wider scope of applications. The idea is to have a very HTTP-centric visual language to write glue-code between web-services using Node.js.

It's made to be customized/modified/enhanced :

*   easily add core modules (written in Node.js)
*   customize UI (forms and modules, using WireIt and inputEx)
*   customize the execution engine
*   composability, reuse modules
It's perfect for :

*   Notifications (email, sms, IM, social networks)
*   services integration and communication
*   plugins for web applications (Webhooks)
*   chaining web-services
*   providing simple webservices
It's not a hosted service like Yahoo! Pipes, but you can install it on your local machine, your servers, on [Joyent Node.js SmartMachines](http://neyric.github.com/webhookit/docs/install_joyent.html), and maybe even on your [Palm Pre devices](http://www.precentral.net/palm-inviting-devs-node-js-meet-up-bay) (lucky you!)

**We are not there yet**

<span style="color: #000000;">This first version of WebHookIt is still alpha software. APIs may change and s</span>ome basic features are still missing. Those are going to be adressed in the first stable release :

*   loop control
*   conditional execution
*   Community, pipes sharing, leverage the pre-existing package manager **npm**
**All the links**

*   <span style="color: #000000;">The online demo : [http://webhookit.no.de](http://webhookit.no.de) (hosted @Joyent)</span>
*   <span style="color: #000000;">[Source obviously hosted on GitHub](http://github.com/neyric/webhookit)</span>
*   <span style="color: #000000;">[The documentation uses the awesome GitHub pages](http://neyric.github.com/webhookit/docs/)</span>
*   <span style="color: #000000;">[Forum here](https://groups.google.com/forum/#!forum/webhookit)</span>
*   <span style="color: #000000;">Report any Issue on [GitHub issues](https://github.com/neyric/webhookit/issues)</span>

Here is a video of WebHookIt in action against the Prowl API : (sorry for the music... it won't happen again !)

<iframe title="YouTube video player" class="youtube-player" type="text/html" width="480" height="390" src="http://www.youtube.com/embed/R94-d36g-EI" frameborder="0" allowFullScreen></iframe>