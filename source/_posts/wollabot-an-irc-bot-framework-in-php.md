title: 'Wollabot, an IRC bot framework in Php'
tags:
  - framework
  - irc
  - php
id: 26
categories:
  - Php
date: 2006-10-14 20:38:37
---

[Wollabot](http://wollabot.sourceforge.net/) is the easiest way to create your own IRC bot. The framework is entirely built in Php and you need very few tuning to make it work. (Good documentation too...)

Here is an example of a (very) simple bot:
<pre>class MyModule extends Wollabot_Module {
  function MyModule () {
    $this-&gt;bind_prefix('say_hello', 'hello');
  }

  function say_hello ($data) {
    $this-&gt;send_privmsg($data['channel'], "Hello ".$data['nick']);
  }
}
$wollabot-&gt;register_module("MyModule");
</pre>