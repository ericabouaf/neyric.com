title: inputEx 0.7.0 release and Roadmap
tags:
  - inputEx
  - yui
  - yui3
id: 206
categories:
  - inputEx
  - Projects
  - YUI Library
date: 2011-01-07 11:00:55
lang: en
---

![](http://neyric.github.com/inputex.jpg "inputEx")

inputEx 0.7.0 was released today !

Most importantly, we upgraded YUI dependency to version [2.8.2r1 to fix security issues](http://www.yuiblog.com/blog/2010/10/25/yui-2-8-2-security-update/), and fixed a major bug for Internet Explorer 9.

We also worked on setting correct names for all sub-fields in order to use classical browser form posting. You can now safely use _Group_ and _List_ fields using standard forms.

Finally, I merged all the various Wiki pages we had into the [new inputEx Guide](http://neyric.github.com/inputex/guide.html). Obviously far from being complete, this first version will help us replying to questions from the forum, and hopefully help newcomers.

You can take a look at the complete [changeset here](http://neyric.github.com/inputex/version.txt), and d[ownload the 0.7.0 version here](http://cloud.github.com/downloads/neyric/inputex/inputex-0.7.0.zip).

**inputEx Roadmap**

Now, where are we going ?

With the upcoming YUI 3.3.0 release, it is now time to seriously work on upgrading inputEx to YUI3.

Of course, this is not a new idea, and we've already tried to [start the project over](http://xkcd.com/844/), leveraging the YUI 3 widget infrastructure. However, this appeared to be a huge amount of work, while throwing away most of the current code.

Facing our failure, we've decided to take a smaller step to get there, so we'll start by forking the current version to make it work with YUI3, using [yui2in3](http://developer.yahoo.com/yui/3/examples/yui/yui-compat.html) for widgets dependencies, while keeping code changes to the strict minimum.

Once this version is out, we'll be able to continue with the following goals in mind :

*   remove unrelated code from the library (yql-related stuff, JsonTreeInspector, ...)
*   removing YUI2 dependencies while widgets get integrated into YUI3
*   make inputEx available on the YUI gallery (and leverage Yahoo! CDN )
*   finally use the YUI Widget framework
You will be able to follow the progress of the inputEx-yui3 branch on [https://github.com/neyric/inputex/network](https://github.com/neyric/inputex/network).

Happy new year !