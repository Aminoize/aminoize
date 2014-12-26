source 'https://rubygems.org'

gem 'rails', '4.1.2'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'minitest-rails'
gem 'selenium-webdriver'

group :test do
  gem 'minitest-rails-capybara'
  gem 'launchy'
end

group :development, :test do
  if ENV['SAUCY']
    gem 'sauce', '~> 3.1.1'
    gem 'sauce-connect'
    gem 'parallel_tests'
  end
end

