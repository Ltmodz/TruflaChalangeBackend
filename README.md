# Introduction 
this is a brief intro on how to use the application and how intall it lets start.

# Installation

**System specs**

* Ruby version = 2.5.1

* Database = postgresql-v9.3

* Rails = 5.1.7 version 

**Installation**
- Use bundler to bundle the gems
```ruby
bundle install
```
- Creating the database:
check the database.yml file and supply the username and the password for the postgresql based on your username and password

```ruby
rails db:create
rails db:migrate
rails db:seed
```
- Running the server
```ruby
rails s --port=3001
```


