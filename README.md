# Lunice
#### Simple URL Shortner and URL Click Tracking tool

*TODO* Wanna see Lunice in action? [Try the demo](https://github.com/brunohq/lunice)

## Features

- Create short links with your own custom domain (e.g. http://luni.ce/x83)
- Generate custom URLs for specific Entities (person, company or campaign)
- Track generic link clicks: Entity, date & time, location, ip address

## Getting Started

```bash
git clone https://github.com/brunohq/lunice.git
bundle install
rake db:migrate
rails s
```

### Management Interface

To access the management interface area you need to set a secure username and password. Rename the `.env.sample` to `.env` and change its content.

```bash
cp .env.sample .env
vim .env
```

Restart the server and head over to: http://localhost:3000/manage and start creating your custom links.

## Deploying to Production

Lunice runs smoothly on Heroku. You can quickly set up your custom links with your own domain, all you need to do is first install the [Heroku Toolbelt](https://toolbelt.heroku.com) and then run:

```bash
heroku create
git push heroku master
heroku run rake db:migrate
```

Finally, you need to set a secure username and password to access the Management Interface:

```bash
 heroku config:set ADMIN=username ADMIN_SECRET=xxxxxxxxxxx
```

And, now you're ready to go!

## Improvements & Suggestions

Lunice is currently in BETA. If you'd like to contribute or if you have any suggestions, open an issue, make a PR or holla at me.

With love, 
[@brunohq](http://twitter.com/brunohq)
