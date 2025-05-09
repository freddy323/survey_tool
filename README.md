# README

# Survey Tool
A simple survey application built with Ruby on Rails 7.1.2 using Hotwire (Turbo) for a single-page application experience.

# Features
Create surveys with yes/no questions

Respond to surveys with yes/no answers

View real-time response percentages

All interactions happen on a single page without full reloads

Clean, responsive UI with Bootstrap

# Requirements
- Ruby 3.2.x
- Rails 7.1.2
- SQLite3

# Getting Started

## Installation
1. Clone repository using this link 
- git clone https://github.com/yourusername/survey_tool.git
- bundle install
- rails db:create
- rails db:migrate
- rails db:seed
- rails s

Then visit http://localhost:3000 in your browser.

# Running Tests
The application includes RSpec tests for models, requests, and system tests.

## Run all tests:
- bundle exec rspec
