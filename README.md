# Lunice
#### Simple URL Shortner and URL Click Tracking tool

*TODO* Wanna see Lunice in action? [Try the demo](https://github.com/brunohq/lunice)

## Features
- Create short links with your own custom domain (e.g. http://luni.ce/x83)
- Generate custom URLs for specific Entities (person, company or campaign)
- Track generic link clicks: Entity, date & time, location, ip address

## Getting Started

```bash
git clone https://github.com/lockitron/selfstarter.git
bundle install
rake db:migrate
rails s
```

### Management Interface

http://localhost:3000/manage

## Deploying to Production

Lunice runs smoothly on Heroku. You can quickly set up your custom links with your own domain all you need to do is first install the [Heroku Toolbelt](https://toolbelt.heroku.com) and then run:

```bash
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

## License

Lunice is licensed under the [MIT License](https://tldrlegal.com/license/mit-license).

## Improvements & Suggestions

Lunice is currently in BETA. If you'd like to contribute or if you have any suggestions, open an issue, make a PR or holla at me.

With love, 
[@brunohq](http://twitter.com/brunohq)
