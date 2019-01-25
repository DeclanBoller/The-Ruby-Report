# The Ruby Report - Project 01

### Introduction -

This is the second project of my course at General assembly. This project is the culmination of things that I have learned over the last 5 weeks. The framework used in this project is Ruby on Rails.

I have created a notional client, 'NewsHub' who have requested I build a news application with Rails, that can host both public content and private or exclusive content. The minimum viable product allows the company to post articles, edit them, remove them and store them in a database. In conjunction with this, the company has requested the abilty to assign users to admin rights, this can only be done directly through the rails console at this time, however the company plans to change this in the future, to allow current admins to provide greater access to other users.

At this time the company only requires it to be available for desktops, however the company plans to introduce mobile responsiveness.

## Deployment -
The proof of concept of this application is available online here:
* [Heroku - 'The Ruby Report'](https://newshub-au.herokuapp.com/)

## Prerequisites -
To download this code and run on on your local host you will require the following:
* PostgreSQL App - [Download Here](https://postgresapp.com/)
* Rails Gem - This assumes you have Ruby installed;
```
gem 'rails', '~> 4.0', '>= 4.0.4'
gem install rails -v 4.0.4
```
* To run the code on localhost:3000 cd into the newsHub folder then run:
```
rails server
```

## Built With -
* [Ruby on Rails](https://rubyonrails.org/) - Framework
* [Postgres.app](https://postgresapp.com/) - Database Management
* [Google reCAPTCHA API (v2)](https://developers.google.com/recaptcha/docs/display) - Spam Protection
* [Open Weather Map API](https://openweathermap.org/) - Weather Service

## Known Issues -
* Currently articles marked as exclusive still show up in the Category view.
* Article hero image does not update, this is because the initial plan was the allow articles to have many images, and the code has not been amended due to time constraints.

## License and Usage -
This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/DeclanBoller/project-1/blob/master/LICENSE) file for details.

## Author -
* **[Declan Boller](https://github.com/DeclanBoller/)** - *Project as part of GA Study*
