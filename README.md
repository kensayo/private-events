![](https://img.shields.io/badge/Microverse-blueviolet)

# Private Events
![](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) ![](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)

> This project is developed as part of the Microverse curriculum, to be more specific, is part of the Ruby on Rails module.
>
> It consists in a web application where users can create and mark attend in events.

## Index

![Screenshot](./screenshot/index.png)

>This is the main page, where are listed all the past and upcoming events.

## Index whit logged User
![Screenshot](./screenshot/index_user.png)

> Is pretty much the same than Index but you can see more options, attend or not to an event, also create and view my created events.

## Create Event
![Screenshot](./screenshot/create_event.png)

> This page allows the user to create an event.
 
## Event Show

![Screenshot](./screenshot/event_show.png)

> The show event's page allow user to attend an event, view full description and a list of attenders.

## User Show

![Screenshot](./screenshot/user_show.png)

> User's Events list the created events by the user and a list of my upcoming and past event where I will assist.

### 👷🏻 Built using
    - Ruby
    - Ruby On Rails
    - Rubocop
    - SQLite3
    - Github
    - RubyMine
    - CSS3

## Getting Started

To get a local copy up and running follow these simple example steps.

### ✅ Prerequisites

* Make sure that **Ruby Environment** is installed in your computer (try to run _ruby_ from your prompt), if not you can install it from [here.](https://www.ruby-lang.org/en/downloads/)

* [Download](https://github.com/kensayo/private-events/archive/refs/heads/development.zip) and unzip **or** [clone this repository](https://docs.github.com/es/github/creating-cloning-and-archiving-repositories/cloning-a-repository)


### 👨🏻‍🔧 Setup

- Open your terminal and move to the root of the project, using ```cd``` command.
- You must run ```$ bundle install```
- Then you must run ```$ rails db:migrate```, so you can work locally with the database.
- Start server using ```$ rails s```

### 🔌 Usage

- You can go to http://127.0.0.1:3000/ to use the app locally

### Tests

- You need to migrate the test database with the following command ```rails db:migrate RAILS_ENV=test```
- Then just run ```rspec``` in the prompt

## 👨🏻‍💻 Kenny Ortega

- GitHub: [kensayo](https://github.com/kensayo)
- Twitter: [@kensayo](https://twitter.com/kensayo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/kennyortega/)


### Contributions and issues are welcome!

License
This project is MIT licensed.
