# Facebook Clone Website

> This project was born as a result of 2 week of dedicated hard work. After finishing Rails curriculum on Microverse I decided to build a Facebook replicate in order to understand more the structure of Ruby on Rails, but we where serious about building something beautiful like this feel free guys to explore the [app](https://book-clone.herokuapp.com/) and please if you have some new feature that you want to propose don't hesitate to open an issue on this repository with the specified details.

## Home Page

![image](https://user-images.githubusercontent.com/34653764/85905868-8c36c100-b804-11ea-8e4b-32a7e307d451.png)



## Entity Relation Diagram

- Here is the Entity Relation Diagram that we have used in this project

![image](https://user-images.githubusercontent.com/34653764/85909879-f2771000-b813-11ea-909e-22b4a2dafe19.png)


## Features
- User can log in using an email and password;
- User can sign up, entering his personal informations;
- User can access his profile;
- User can access all users profile;
- User can add a friend;
- User can cancel a friend request;
- User can accept or decline a friend request;
- User can share a post, delete and edit his own posts;
- User can like, dislike and leave a comment on a post;
- User can sent messages to a user;
- User can receive messages from a user;
- User can change his avatar;
- User can change his cover picture;
- User can update his personal informations;

## Built With

- Ruby v2.6.5,
- Ruby on Rails v6.0.3.2,
- Action Cable
- AWS S3 services






## Getting Started

**This is an example of how you may give instructions on setting up your project locally.**

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby: v2.6.5p114
- Ruby on Rails v6.0.3.2
- Postgres: >= 9.5
- AWS credentials

### Setup

- Install gems with:

```
  bundle install
```

- Setup database with:

```
  rails db:create
  rails db:migrate
```

## IMPORTANT

**I used S3 AWS service in order to store images. Therefore, I used SECRET KEYS stored in environment variables on my development and production servers.**

- So if you have AWS credentials create a file an application.yml file inside config/ and put this your credentials in it like showing bellow:

```ruby
  development:
    access_key_id: your_access_key_id_goes_here
    secret_access_key: your_secrect_access_key_goes_here
```

### Usage
Start server with:

```
  rails s
```

Then open `http://localhost:3000/` in your browser

## Authors

👤 **Justin Padilla**

- GitHub: [@sundev207](https://github.com/sundev207)








## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sundev207/facebook-clone-website/issues).

## Show your support

Give a ⭐️ if you like this project!
