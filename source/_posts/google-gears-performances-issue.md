title: Google Gears performances issue
tags:
- Google Gears
id: 132
categories:
- [Projects, Gears In Motion]
- [Software, Javascript]
date: 2007-12-03 12:10:49
lang: en
---

I've been using Google Gears rather intensively (see [Gears In Motion](http://neyric.com/blog/running-demo-for-gears-in-motion)) during the last few months.

I started building an interface that uses all the components of Google Gears (Local Database, Local Server and WorkerPool), and implemented a synchronization engine. The result was a much more responsive offline application with many features that couldn't have been easily implemented without the local database, and that works great !

Until... one of my coworker tried to import 20.000 records: **It took 40 minutes to execute the SQL INSERT statements !** (approx. 120ms/insertion)

We then decided to write this [100 insertions test](http://www.neyric.com/files/ggperfs/index.html), which revealed to have surprising results :

*   On MacOS 10.4.11: **2.6ms** by insertion (approx. 385 insertions/second)
*   On Windows XP and Vista: **107ms** by insertion (approx. 9 insertions/second)
Please [run the test](http://www.neyric.com/files/ggperfs/index.html) and post your results as a comment indicating your OS/Browser version/Google Gears version.

Any idea why it is so slow on Windows ?