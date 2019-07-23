# Workers & Customers

You're working on a rails web app which matches workers to customers.

A worker is a registered user, who has one or more skills like “cooking”, “house cleaning”, “fixing wireless networks”, and so on.

A customer, also a registered user, can search for workers by skill. For example, if a customer needs a worker who can do both cooking and house-cleaning, she will go to the site, choose both these skills from a list, and get a list of workers from which to choose.

The site could have perhaps up to 1,000 workers, 10,000 customers and 100 skills.

The challenge: create a prototype of this website, with the main focus on the back end, especially the models and search functionality.

This is expected to take about 5-10 hours, but we don't run a timer :) Feel free to use your finished code as open source code in your portfolio.

## Setup
```
bundle install
rake db:create
rake db:migrate
rake db:seed
```

## Log in
```
customer0...9999@mail.com
Password1
```

example:
- login: customer100@mail.com
- password: Password1

## To Do

- [x] Initial rep
- [x] Rails + Rubocop + Rspec
- [x] Devise register / login
- [x] Worker - Customer models
- [x] Skills model and table seed
- [x] Workers and Skills relation
- [x] Workers + Skills, Customers seed
- [x] Search HTML & RJS service class and UI
- [ ] CI (Circle or Codeship)
- [ ] Heroku deploy
- [ ] Smoke tests

## Screenshots

![Alt text](https://monosnap.com/image/O6zkhdw6WEKxmXUpm52vgc2QsjWBus)

App works without JavaScript too.

![Alt text](https://monosnap.com/image/hkda1TeuuFQPHGZqWhD2QHaCAaZOEe)
