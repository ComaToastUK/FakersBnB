# FakersBnB
============================

This week we were tasked to build a clone of AirBnB in teams of 4 and were encouraged to use any open source programming languages that we wanted. Team 'Byte 0' consisted of Sunali Seth, Joe Ingram, Will Cabangon and James Stubbs were highly ambitious at the start of the week and having been progressing with Javascript were keen to work with some new Javascript technologies. We decided on MEAN stack but quickly changed track again and the group consensus was that learning React would be a valuable learning experience. As well as this we decided that if it went well it would help us to create a more polished end product. We decided on a Ruby serverside, json get and post requests to access data stored in a postgres database.

Due to the learning challenges involved and time constraints we decided that we did not have time to properly integrate a React front end and instead would simplify the front and and build on the back end architecture we had created. This was a big learn for the team but we had a lot of fun nonetheless.

## User Stories



## Getting Started

### Prerequisites
To run this work in progress locally you should create fakersbnb_development & fakersbnb_test databases in PostgreSQL

$ git clone https://github.com/ComaToastUK/FakersBnB.git
$ bundle install
$ shotgun

## Running the tests
To run the feature tests type rspec into the console after installing the repo locally.

## Deployment
Our app is yet to be deployed

## Built with
- Sinatra: Ruby framework
- Ruby: Programming language
- HTML & CSS: Styling
- Bootstrap 3: Styling
- jQuery
- RSpec/ Capybara: For unit and feature testing
- DataMapper: ORM
- Database Cleaner: To clear the databases before/after each test
- BCrypt: For user password encryption
- Sinatra-Flash: For displaying notices/errors to users

## Authors

James Stubbs, Sunali Seth, Joe Ingram, Will Cabangon

## Notes
### Challenges

Unfortunately, with the amount of research and learning to be done at the start of the project we were unable to take more than out first steps with React and after 3 days with no MVP we retreated. We decided to build on our back end and hugely simplified the front end due to time constraints. In the end we were able to build a number of tested features in the two days we had remaining however we were not able to finish and the end product didn't have the polish and functionality we were optimistic it would on Monday.

### Extra features
Features we would have liked to have implemented:

- Messaging functionality - We would have like to give users the ability to send messages between each other.
- Booking function - This would have involved a user selecting dates and those availability dates getting saved in out database.
- Google maps API - Giving users the ability to see property locations on a map
- Styling - we who had high hopes for our React front end would have liked to create a more finished looking end product
