title: Reporting javascript errors to the server
tags:
  - error
  - yui
id: 128
categories:
  - Javascript
date: 2007-04-26 13:12:13
---

In every web application that intensivly uses javascript: errors may occur !
Since I'm not able to fully-test my web-application each time a modification is made, I decided to report javascript
errors to the server. It proved to be very useful to detect bugs very quickly.

Here's an example on how to do so with [YUI](http://developer.yahoo.com/yui/) :
<pre>
window.onerror = function(msg, href, lineNo) {
  var postData = 'msg='+msg+'&amp;file='+href+'&amp;line='+
		lineNo+'&amp;infos='+navigator.userAgent;
 YAHOO.util.Connect.asyncRequest('POST', 'report_error.php',
              { success: function(o){}, failure: function(o){} }, postData);
}</pre>
I just added "navigator.userAgent" to the parameters of window.onerror, so you know
which browser generated the error.