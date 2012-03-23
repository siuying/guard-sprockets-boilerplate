# guard-sprockets-boilerplate

A web project boilerplate use guard and sprockets to watch and compile your static assets 

## What it does

- Compile assets (stylesheets (css/scss), javascripts(js/coffee) and images) into /public/assets
- Run jasmine using headless webkit

## Installation

Before using the boilderplate, install the dependencies:

    bundle install
    
You will also need to install [jasmine-headless-webkit](http://johnbintz.github.com/jasmine-headless-webkit/) and its dependencies first.

## Usage
    
Start development by running the gaurd command:
    
    bundle exec guard start

Guard will watch the app folder and compile javascripts, coffeescripts, SASS and css.

Put your application images, javascripts and stylesheets into app/images, app/javascripts and app/stylesheets.

Put your vendor images, javascripts and stylesheets into vendor/images, vendor/javascripts and vendor/stylesheets.
    