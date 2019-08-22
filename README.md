
# _Product_Review_

#### _Project for Week 11 at the coding school, Epicodus, written on August 16, 2019._

#### By _**Tae Lee**_

## Description

_A website for (fictional) Mario's Speciality Food Products created using Ruby on Rails._
_Mario's Speciality Food Products (or another fictional company of your choosing). In particular, Mario is concerned_ _about the information in his database being correct; the goal for today is to have the most comprehensive validations_ _and callbacks to ensure information is properly saved and formatted in the database._

# Database
_The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country_of_origin. All reviews should have an author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well._

# Products
_The site needs to include a list of the tasty products that Mario sells._
_Each product should be clickable with a detail view._

_Users are able to add, update and delete new products._
_Users should be able to click an individual product to see its detail page._
_Users should be able to add a review to a product._

# Scopes
_This site should use scopes to display the following information on the site:_
_The product with the most reviews._
_The three most recently added products._
_All products made in the USA for buyers that want to buy local products._

# Validations
_This site should include validations for the following:_
_All fields should be filled out, including rating._
_Rating can only be an integer between 1 and 5._
_The review's content_body must be between 50 and 250 characters._

# Callbacks
_This site should include a callback for the following:_
_All products are automatically titleized (first letter of each word capitalized) before they are saved to the database._

# Seeding
_This project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database._

# Flash Messages
_The project should include flash success and error messages for creating products and reviews._

## Setup/Installation Requirements

* _Clone this repository_
* _Open terminal and type 'git clone [git link]'_
* _Navigate to project directory using cd in terminal_
* _Open project in text editor (atom .)_
* _Type 'bundle install' in terminal to load Gems (if you have capybara version incompatible issue with current version of ruby, try "/Users/[User Name]/.rubies/ruby-2.6.3/bin/bundle install" instead of "bundle install"_
* _To run tests, type 'rspec' in terminal_
* _postgres DB installation with sql script in project (if your Postgres DB is not starting at login, please execute "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start" on terminal._
* _for database backup, please execute followings in terminal,_
* _pg_dump [YOUR DATABASE NAME] > database_backup.sql_
* _for database restore after clone, please execute followings in terminal_
* _createdb [DATABASE NAME]_
* _psql [DATABASE_NAME] < database_backup.sql_
* _createdb -T [DATABASE NAME] [TEST DATABASE NAME]_

## Specs
| Behavior                                       | Input                                 | Output                                       |
| ---------------------------------------------- |:-------------------------------------:| --------------------------------------------:|
| DB schema design for one-to-many relationship  | create products table                 |                                              |
| make CURD logic for application                | create model for product              |                                              |
| DB schema design for one-to-many relationship  | create reviews table                  |                                              |
| DB schema design for one-to-many relationship  | set up foreign_key with dependent     |                                              |
| Testing with Rspec and Shoulda Matchers        | rspec                                 | 2 examples, 0 failures                       |
| Routing with Rails (Nested Routing with Rails) |                                       |                                              |
| creating Rails Controllers                     |                                       |                                              |
| creating Views with link_to method             |                                       |                                              |
| creating Active Record Validations features    |                                       |                                              |
| creating database seeding using faker gem      | rake db:seed                          | "Created 50 products", "Created 250 reviews" |
| creating callbacks features with rspec test    |                                       |                                              |
| creating Flash message features                |                                       |                                              |
| creating validation tests for char_length, range of rating, class of product and review|                                              |
| creating scope features for most_reviewed, local_product, three_most_recent records    | test on rails console                        |
| It didn't have timpstamps column in db and so the most recent products cannot be generated by created_at logic in scope,              |
| We fix it with the remove of current data and table and new migration step for timestamps and recreate data using seed with faker     |
| creating scope feature for three_most_recent product in landing page |
| creating user authentication with devise |
| performing some spec tests |
| creating user Controllers for products |
| Implementing SimpleCov feature in spec test process.|
| Implementing FactoryBot feature in specs |

## Setup

_bundle install_
_rake db:create_
_rake db:migrate_
_rake db:seed_
_rails server_
_open http://localhost:3000 in a web browser_

## Support and contact details

_Please contact us if you have any issues at: taebumlee@gmail.com_

## Technologies Used

* Ruby 2.5.4
* ActiveRecord
* Rspec
* Faker
* FactoryBot
* Shoulda-Matchers
* SimpleCov
* Devise
* Capybara
* Atom
* GitHub
* Postgres DB 11.5
* for faker practice, use the faker information on https://www.rubydoc.info/gems/faker/1.6.6#fakervehicle site for test.

### License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Tae Lee**
