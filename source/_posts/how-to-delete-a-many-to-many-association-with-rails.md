title: How to delete a many-to-many association with Rails
tags:
categories:
- [Software, Ruby on Rails]
date: 2007-07-08 12:59:53
lang: en
---

Judging by the number of Ruby on Rails developpers asking themselves this question,

this is the missing example of Rails. (It's not in my Rails reference book, and
I've never seen any example on any blog.)

One solution is to create a new model for the association. It **schould** be the case

if you add attributes to the association (because _push_with_attributes_ is now deprecated).

You can then simply find the association given the ids of your linked object and call destroy.

However, when you don't have any attribute in your liaison, the _has_and_belongs_to_many_

is nicer to work with. (you don't need a rails model for the liaison.)

Here is a link to the methods [
_has_and_belongs_to_many_ adds](http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html#M000645) where we can read :

<pre>"collection.delete(object, …) - removes one or more objects from the
collection by removing their associations from the join table.
This does not destroy the objects."
</pre>

Let's assume we dispose of 2 models 'Post' and 'Category' with a N-N association :

<pre>class Post &lt; ActiveRecord::Base
  has_and_belongs_to_many :categories
end

class Category &lt; ActiveRecord::Base
  has_and_belongs_to_many :posts
end

</pre>

To delete an association (remove a post from a category) you can use this method :

<pre>  def remove_post_from_category
     post = Post.find(params[:post][:id])
     category = post.categories.find(params[:category][:id])

     if category
        post.categories.delete(category)
     end

  end

</pre>

This function will destroy the association but **won't** destroy the category.

You can also removes all the categories from the posts by using :

<pre>collection.clear - removes every object from the collection.
This does not destroy the objects.</pre>

In our example :

<pre>
post.categories.clear
</pre>