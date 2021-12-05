# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development do
  gem 'overcommit'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'sqlite3'
end

group :test do
  gem 'warning'
end
