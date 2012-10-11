# Fundraiser App

Example app that shows how to use the Fundraiser gem to set up your own
crowdsourcing website.

## Create the Rails app

    rails new fundraiser-app

## Install fundraisre

Gemfile

    gem 'fundraiser'

Bundle

    bundle install

Copy migrations from Fundraiser

    rake fundraiser:install:migrations

Run them

    rake db:migrate

Mount the engine on routes.rb

    Rails.application.routes.draw do
      mount Fundraiser::Engine => "/fundraiser"
    end

Create an admin user

    rake fundraiser:manager[email@test.com,123456]

# About the author

[Crowd Interactive](http://www.crowdint.com) is a leading Ruby and Rails
consultancy firm based in Mexico currently doing business with startups
in the United States. We specialize in building and growing your existing
development team, by adding engineers onsite or offsite. We pick our clients
carefully, as we only work with companies we believe in. Find out more about
us on our [website](http://www.crowdint.com).

# Licencse

MIT License. Copyright 2012 Crowd Interactive.
