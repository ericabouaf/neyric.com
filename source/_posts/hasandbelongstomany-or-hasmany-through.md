title: 'has_and_belongs_to_many or has_many :through?'
tags:
  - has_and_belongs_to_many
  - rails
  - through
id: 45
categories:
  - Ruby on Rails
date: 2007-02-10 17:51:19
---

As you may (or may not) know, there are two ways to build a many-to-many (or N-N) relationship with Rails.

1.  The first way uses <span style="font-style: italic;">has_and_belongs_to_many</span> in both models. You'll have to create a join table that has no corresponding model or primary key. ( ActiveRecord will look by default for a join table called <span style="font-style: italic;">groups_users</span> )

`class Group &lt; ActiveRecord::Base
has_and_belongs_to_many :users # foreign keys in the join table
end
class User &lt; ActiveRecord::Base
has_and_belongs_to_many :groups # foreign keys in the join table
end`

`
The join table can have more attributes which can be filled with the <span style="font-style: italic;">push_with_attributes</span> method:`

`<code>class User &lt; ActiveRecord::Base
has_and_belongs_to_many :groups # foreign keys in the join table`

` def join_group(group)
groups.push_with_attributes(group, :joined_at =&gt; Time.now)
end
end`2.  The second way uses a has_many association with the :through option and a join model:
`class Subscriptions &lt; ActiveRecord::Base
belongs_to :group  # foreign key - programmer_id
belongs_to :user     # foreign key - project_id
end
class Group  :subscriptions
end
class User  :subscriptions
end
`
`If you have to work with the relationship model as its own entity, thent you'll need to use <span style="font-style: italic;">has_many :through</span>. Otherwise, you can just stick to <span style="font-style: italic;">has_and_belongs_to_many</span>.

`