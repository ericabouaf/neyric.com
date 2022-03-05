title: WebRunner/XulRunner and Google Gears
tags:
- Google Gears
categories:
- [Software, Javascript]
date: 2007-10-12 11:41:26
lang: en
---

I get very excited by [the recent release of WebRunner 0.7](http://starkravingfinkle.org/blog/2007/09/webrunner-07-new-and-improved/) : _"[WebRunner](http://wiki.mozilla.org/WebRunner) is a simple XULRunner based browser that hosts web applications without the normal web browser user interface."_

It lets you use your favorite web applications in a separate process/window with better OS-integration (alt-tab, desktop icon ...). Many applications such as Gmail, Google Reader, Facebook and others [are already packed.](http://wiki.mozilla.org/WebRunner#Installs) And it is **very** simple to [create your own](http://wiki.mozilla.org/WebRunner:Bundle).

I get even more excited when I found out that [Alex Sirota added Google Gears support on WebRunner](http://www.iosart.com/blog/2007/06/05/install-google-gears-in-a-xulrunner-app-in-3-quick-steps/).

His method is a bit out-of-date (I think he used WebRunner 0.5), so here is the way to do it in 2 steps under Windows (and with WebRunner 0.7) :

*   Tell WebRunner to load the Google Gears extension: open regedit, and **add** the following key : [HKEY_LOCAL_MACHINE\SOFTWARE\WebRunner\Extensions]
{000a9d1c-beef-4f90-9363-039d445309b8}=C:\\Program Files\\Google\\Google Gears\\Firefox\\
*   Make Gears compatible with WebRunner : Open C:\Program Files\Google\Google Gears\Firefox\install.rdf and add those lines after the "em:version" tag :
<pre>

    &lt;em:targetApplication&gt;
 &lt;Description&gt;
  &lt;em:id&gt;webrunner@developer.mozilla.org&lt;/em:id&gt;
  &lt;em:minVersion&gt;0.4&lt;/em:minVersion&gt;
  &lt;em:maxVersion&gt;1.0.0.*&lt;/em:maxVersion&gt;
 &lt;/Description&gt;
&lt;/em:targetApplication&gt;</pre>

*   The third step Alex describes on his blog is NOT necessary with WebRunner 0.7 (the extension manager is already on)
The Web Applications schould now be able to use Google Gears (Gears doesn't tell anymore that the browser is not compatible, and the google javascript object is now available).

Unfortunately, WebRunner crashes as soon as the webapp uses Gears: "Error while loading gears.dll". After some investigation, I found out that XulRunner wasn't able to find some dlls (which are under the WebRunner\xulrunner directory). I copied them all into windows\system32, tried again, and now WebRunner crashes without error...

I told myself: "Hey, it's Windows, it's not the first time an app crashes without reason...", and hurried to MacOS X. Since we cannot use the registry to tell WebRunner to load Gears, I put the gears extension directory into _/Applications/WebRunner.app/Contents/Resources/extensions_, and did the second step. However, WebRunner doesn't seem to load the extension and gears tells us that our browser is not compatible. I also tried to put it in the profile/extensions directory of WebRunner, without success.

Conclusion: After one day of relentlessness work, I wasn't able to make it work on Windows, neither on MacOS. I even tried with Gears v0.1.54.0 and v0.1.56.0 with the same results. Did it work for you ?