# WaitList-API
*by Nick Rotondo*

An app for a restaurant host to organize and prioritize guests on a waitlist and tables in the restaurant. This app also aims to track and calculate data to pertaining to wait times and turnover rate to provide a better customer experience and a deeper understanding of your restaurant's turnover efficiency.

## API

This API requires no additional installation. Scripts are included in [`scripts`](scripts) to test built-in actions.

#### Deployed
https://waitlist-api.herokuapp.com

### ERD:
[Imgur](https://i.imgur.com/BdBePdG.jpg)

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
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

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### Client
Repository: https://github.com/rotondozer/waitlist
Deployed: https://waitlist-client.herokuapp.com

### Approaching this Project
For this app, I'm pulling in my years of restaurant management experience to make something I would have wanted for myself when I was hosting busy brunch or dinner service. I wanted to create an app that would provide useful data to the host regarding wait times and table turnover rates, as well as keeping track of guests on a waitlist and the availability of tables.

This being my first **React** project, I knew getting comfortable with the front-end was going to take some time. I made sure to give myself plenty of time to work through bugs and simply stalling out when working with a new technology. I usually try to get my API logic exactly where I wanted it before even touching the front-end, but this time I spent time on each from the beginning.

My database structure took a few ERDs to get right. That was a bit time consuming at first. After that I began customizing my Rails API with all the controller methods I would need. When it came to the React client, as always, functionality came before design.
