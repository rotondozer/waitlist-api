# WaitList-API

An app for a restaurant host to organize and prioritize guests on a waitlist and tables in the restaurant. This app also aims to track and calculate data to pertaining to wait times and turnover rate to provide a better customer experience and a deeper understanding of your restaurant's turnover efficiency.

Motivation for this app comes from years of restaurant work experience, where I wish I had a tool to help multitasking while managing the floor *and* hosting busy brunch or dinner service. I wanted to create an app that would provide useful data to the host regarding wait times and table turnover rates, as well as keeping track of guests on a waitlist and the availability of tables.

**Client**: https://waitlist-client.herokuapp.com

**Rails DB**: https://waitlist-api.herokuapp.com

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Installation

1.  Install dependencies with `bundle install`.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rake secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests to the deployed API set `SECRET_KEY_BASE` in the environment 
    of the production API (using `heroku config:set` or the Heroku dashboard).
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `heroku config:set CLIENT_ORIGIN https://<github-username>.github.io`).
1.  Setup your database with `bin/rake db:nuke_pave` or `bundle exec rake
    db:nuke_pave`.
1.  Run the API server with `bin/rails server` or `bundle exec rails server`.

## Tasks

-   `bin/rake routes` lists available endpoints
-   `bin/rake test` runs automated tests.
-   `bin/rails console` opens a REPL that pre-loads the API.
-   `bin/rails db` opens your database client and loads the correct database.
-   `bin/rails server` starts the API.

## API

`curl` command scripts are stored in [`scripts`](scripts) with names that
correspond to API actions.

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/users`               | `users#index`     |
| GET    | `/users/1`             | `users#show`      |
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| GET    | `/tables`              | `tables#index`    |
| POST   | `/tables`              | `tables#create`   |
| PATCH  | `/tables/:id`          | `tables#update`   |
| DELETE | `/tables/:id`          | `tables#destroy`  |
| GET    | `/parties`             | `parties#index`   |
| POST   | `/parties`             | `parties#create`  |
| PATCH  | `/parties/:id`         | `parties#update`  |
| DELETE | `/parties/:id`         | `parties#destroy` |

### Reset Database without dropping

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```

