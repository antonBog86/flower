source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
gem 'mysql2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# view & styles
gem 'haml'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

gem 'twitter-bootstrap-rails'

# image upload
gem 'carrierwave'

# auth
gem 'devise'

gem 'activeadmin', github: 'gregbell/active_admin'

# Use Capistrano for deployment
gem 'capistrano', '~> 3.2.1'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.3'

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development do
  gem 'quiet_assets'
end

group :development, :test do
  gem 'faker'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-remote'
end

group :test do
  gem 'poltergeist'
end
