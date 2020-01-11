# _Project Volunteer Manager_

#### _Application to manage volunteers, 1/10/2020_

#### By _**Drew Peterson**_

## Description

_An internal website to track volunteers working on projects._

## User Stories

* As a non-profit employee, I want to view, add, update and delete projects.
* As a non-profit employee, I want to view and add volunteers.
* As a non-profit employee, I want to add volunteers to a project.

## Setup/Installation Requirements

* Ensure that you have the correct version of Ruby and Postgres installed
* Clone the project locally from github.
* Install Bundler if you do not already have it by running gem install bundler in the terminal.
* Run bundle install to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
* DATABASE INSTRUCTIONS - from the root directory of this project, run these commands:
*         createdb volunteer_tracker
*         psql volunteer_tracker < database_backup.sql
*         createdb -T volunteer_tracker volunteer_tracker_test



## Known Bugs

_There are no known bugs at this time._

## Support and contact details

_Please contact me directly via email at drew.a.peterson@hotmail.com with any bug reports, questions, critique, or for any reason._

## Technologies Used

_Ruby 2.5.1, Postgres SQL, and PG, Pry, Bundler, Sinatra, rspec_

### License

*GPL*



Copyright (c) 2020 **_Drew Peterson_**
