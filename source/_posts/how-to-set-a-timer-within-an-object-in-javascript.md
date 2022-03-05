title: How to set a timer within an object in Javascript
tags:
categories:
- [Software, Javascript]
date: 2007-02-01 14:50:54
lang: en
---

_ **UPDATE**: I don't recommend this method anymore: it's not a good idea to add functions to Object.prototype. Prefer adding this function to your object prototypes._

Here's a useful method given by [Douglas Crockford](http://javascript.crockford.com/) that can be added to Object.prototype :
<pre>
Object.prototype.later = function( msec, method) {
  var that = this;
  var args = Array.prototype.slice.apply( arguments, [2] );

  if( typeof method === 'string' ) {
    method = that[method];
 }
  setTimeout(function() {
    method.apply(that, args);
  }, msec);

  return that;
};</pre>
Then, you can call it on any object, the function will be called with the object scope:
<pre>
myObject.later(1000, "methodName", arg1, arg2, .... ); // call myObject.methodName(arg1, arg2) in 1 second</pre>