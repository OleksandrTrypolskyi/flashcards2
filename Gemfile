source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
# Use postgresql as the database for Active Record
gem 'coffee-rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier', '>= 1.3.0'

gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'byebug'
gem 'carrierwave'
gem 'dotenv-rails'
gem 'execjs'
gem 'faraday'
gem 'figaro'
gem 'flickraw'
gem 'fog-aws'
gem 'http_accept_language'
gem 'levenshtein'
gem 'mini_magick'
gem 'newrelic_rpm'
gem 'nokogiri'
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler'
gem 'pundit'
gem 'rails_12factor', group: :production
gem 'rake'
gem 'rolify'
gem 'rollbar'
gem 'routing-filter'
gem 'rubocop', require: false
gem 'seedbank'
gem 'simple_form'
gem 'sorcery'
gem 'therubyracer'
gem 'webmock'
gem 'whenever', require: false

group :development, :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
