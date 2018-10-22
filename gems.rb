# frozen_string_literal: true

source "https://rubygems.org"

gem "rails",                "5.2.1"

# Database Adapter
gem "pg",                   "1.1.3"

# Gems used by project
gem "autoprefixer-rails"
gem "bootstrap",            "~> 4.1.3"
gem "carrierwave",          "~> 1.2.3"
gem "devise",               "~> 4.5.0"
gem "figaro",               "~> 1.1.1"
gem "font-awesome-sass",    "~> 5.4.1"
gem "haml",                 "~> 5.0.4"
gem "kaminari",             "~> 1.1.1"
gem "redcarpet",            "~> 3.4.0"
gem "sitemap_generator",    "~> 6.0.1"

# Rails Defaults
gem "coffee-rails",         "~> 4.2"
gem "sass-rails",           "~> 5.0"
gem "uglifier",             ">= 1.3.0"

gem "jbuilder",             "~> 2.5"
gem "jquery-rails",         "~> 4.3.3"
gem "turbolinks",           "~> 5"

# Testing
group :test do
  gem "minitest"
  gem "puma"
  gem "rails-controller-testing"
  gem "simplecov", "~> 0.16.1", require: false
end

group :development do
  gem "web-console", "~> 3.0"
end

group :development, :test do
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end
