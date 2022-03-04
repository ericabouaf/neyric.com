title: Get rid of favicon.ico 404 errors with rails
tags:
  - '404'
  - errors
  - favicon.ico
  - rails
id: 59
categories:
  - Ruby on Rails
date: 2007-07-07 17:29:01
lang: en
---

Every time your browser loads an new url, it also request a file
called 'favicon.ico' in the same subdirectory. This generates a LOT of
errors in the Ruby on Rails logs of my app.

One way to avoid those errors is to redirect the browser to the root /favicon.ico file.

Just add this line in the /public/.htaccess file of your rails project :

<pre style="background-color: black;color: white"> RewriteRule ^(.*)favicon.ico$ favicon.ico [QSA]
</pre>

Do you use another method to resolve this problem ?