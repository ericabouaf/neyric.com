title: Model validation with Rails
tags:
  - model
  - rails
  - validation
id: 24
categories:
  - Ruby on Rails
date: 2006-10-14 19:56:47
lang: en
---

<table>
<tr>
<td>![Ruby On Rails](http://www.rubyonrails.org/images/rails.png)</td>
<td>Rails has very nice features to validate a model (directly mapped on your database). However it gets sometimes sloppy if you don't know the exact command to do your validation.Here's a trick I had a hard time to find.</td>
</tr>
</table>
Everybody knows how to validate the uniqueness of a field in a database :
<pre>validates_uniqueness_of :date</pre>
If you now want to validate the uniqueness of a couple  (ex: date,user_id) here's how you can:
<pre>validates_uniqueness_of :date, :scope =&gt; :user_id</pre>