# Rails Landing Page

A demo Ruby on Rails app built to showcase a simple landing page to collect emails with a full-screen background.

Check it out here: [Demo](http://rails-landing-pg.herokuapp.com)

Using:
- [renz45/mandrill_mailer](https://github.com/renz45/mandrill_mailer)

- Running on Heroku with Mandrill add-on

###Setup:
Once you've cloned this repo to your desktop, to get it up and running locally don't forget to
```sh
bundle install
``` 
and
```sh
rake db:migrate
``` 
To get set up on Heroku, make sure you add the Mandrill add-on to your app either via the Heroku Dashboard or via the console
```sh
heroku addons:add mandrill
``` 
and thats it, just add your images, content, and start collecting emails.

Also, don't forget to change the username and password in the landings controller.

## Thank you.
