# discussion

This is a WIP. Share ideas with others and discuse it :) you can share ideas, rate it and if sometime you want, you can delete your posts.

![image](https://user-images.githubusercontent.com/26731448/162986640-19dd4cb9-a2d1-4c09-99bf-3c351ac85e45.png)

This is the backend api of the component

Can find frontend repo here: https://github.com/ImMPrada/discussion


## Built With
- Ruby on Rails 5
- MySQL
- JSBuilder for responses rendering
- For some services this backend consumes data from a 3rd party Cat API

## Live Demo
--------------------

## Getting Started
To get a local copy up and running follow these simple example steps.

### Setup
First of all, clone this repo in your local environment and cd to the project's folder

```
git clone git@github.com:ImMPrada/discussion-api.git
cd discussion-api
```

You can run the following script:

Prerequisites
Ruby 3.0.0 is required. If you're using rbenv you may need to rbenv install 3.0.0
Bundler for ruby package management. You may install it with gem install bundler
mysql
You may want to use Postman or curl to play with the API.

### Installation

- Install the project dependencies
```
bundle install
```

- Create the database and run the migrations
```
rails db:create
rails db:migrate
```
- Start the server: we use 3001 port for CORS policy with frontend
```
rails server -p 3301
```

## CORS Policy
On development, the backend will only accept requests from another localhost port instance if sent from a browser, otherwise the request will fail due to the current CORS Policy

Usage
This project is a backend API. Following the setup steps, you'll get the API running at http://localhost:3001. You may want to use Postman or curl to have a playground with the API, or you may want to check out our frontend project and it's live version.

Feel free to visit the API docs here.


## Authors
Miguel Prada

GitHub: @ImMPrada
LinkedIn: /in/ImMPrada/
Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the issues page.

Show your support
Give a ⭐️ if you like this project!

## Acknowledgments
Hat tip to frontendmentor.io for their design

Special thanks for comments and mentoring to @mapra99

## License
This project is MIT licensed.
