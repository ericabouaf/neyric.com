title: Singleton pattern in Javascript
tags:
categories:
- [Software, Javascript]
- [Software, Design Patterns]
date: 2007-02-01 14:57:15
lang: en
---

If you'd like to create just one instance of a Class, you'd better use this singleton pattern:
<pre>

var singleton = function() {

  /* Private variables */

  var privateVariable;

  /* Private methods */

  function privateFunction(x) {
    // do something here...
  }

  return {

    /* Public variables */

    publicVariable = 15,

    /* Public methods */

    getVariable: function() {
      return privateVariable;
    },

    setVariable: function() {
      privateVariable = 18;
      privateFunction();
    }
  };

}();</pre>
The magic of this pattern lies in the instanciation of the singleton:

the main function is called directly due to the '()' at the end.