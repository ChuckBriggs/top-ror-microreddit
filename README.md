# README

https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-with-active-record-ruby-on-rails

Just like in the warmup, plan out what data models you would need to allow users to be on the site (don’t worry about login/logout or securing the passwords right now), to submit links (“posts”), and to comment on links. Users do NOT need to be able to comment on comments… each comment refers to a Post.

Users

	username:string        [present]
	id:integer             [present]

	created_at:datetime
	updated_at:datetime

	has_one    profile
	has_many   posts
	has_many   comments

Profiles

	user_id:integer        [present]
	email:string           [present]
#	city:string
#	state:string
#	age:integer
#	gender:string

	created_at:datetime
	updated_at:datetime

	belongs_to user

Posts

	id:integer             [present]
	user_id:integer        [present]
	target_url:string      [present]
	url_description:string [present]

	created_at:datetime
	updated_at:datetime

	belongs_to user
	has_many   comments

Comments

	id:integer             [present]
	post_id:integer        [present]
	user_id:integer        [present]
	body:text              [present]

	created_at:datetime
	updated_at:datetime

	belongs_to user
	belongs_to post

#################################################################################

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

