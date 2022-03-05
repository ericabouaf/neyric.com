title: Building Google Gears 0.3.2.0
tags:
- Google Gears
categories:
- [Software, Javascript]
date: 2008-01-03 14:06:22
lang: en
---

![](http://gears.google.com/images/gears_sm.png)

The google gears team recently [announced](http://code.google.com/apis/gears/upcoming/history.html) the features that will be added in gears 0.3

One of them particularly caught my eyes: the [Desktop API](http://code.google.com/apis/gears/upcoming/api_desktop.html). It provides a simple method that lets you create a shortcut icon on the user desktop, to launch your web application. Is's particularly interesting for an offline-enabled web application, and improves the user experience while making web applications one step closer to Rich Desktop Applications.

However, google doesn't provide the 0.3.2.0 version yet. If you want to try it, you'll have to compile it yourself from the gears svn version. (There's a [tutorial to build it under windows](http://code.google.com/p/google-gears/wiki/BuildingGearsForWindows), for MacOS, a simple "make" will work)

As the compilation procedure was not so straightforward under windows, here are the xpi files (firefox only) from the latest svn revision (revision 638) :

*   [gears-osx-opt-0.3.2.0.xpi (Mac OS X)](http://www.neyric.com/files/gears-osx-opt-0.3.2.0.xpi)
*   [gears-win32-opt-0.3.2.0.xpi (Windows)](http://www.neyric.com/files/gears-win32-opt-0.3.2.0.xpi)
Once you've installed it, you can try this snippet : (it won't work unless you change the icon urls to REAL icon files)
<pre>
var desktop = google.gears.factory.create('beta.desktop');
desktop.createShortcut("Test Application",
       "An application at http://www.test.com/index.html",
       "http://www.test.com/index.html",
      {"16x16": "http://www.test.com/icon16x16.png",
       "32x32": "http://www.test.com/icon32x32.png",
       "48x48": "http://www.test.com/icon48x48.png",
       "128x128": "http://www.test.com/icon128x128.png"});</pre>
I'm now impatient to be able to launch firefox without the browser chrome (like [Prism](http://labs.mozilla.com/2007/10/prism/)) ! I think I'll have to wait for Firefox 3 :)