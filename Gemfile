source 'https://rubygems.org'

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'mysql2'
gem 'exception_notification'
gem 'devise'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  #gem 'rdeploy', '>= 0.2.0', :git=> "git@github.com:cgservices/rdeploy.git"
end

group :developement, :test do
  gem 'pry'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'email_spec'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'capybara-firebug'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rdeploy', '>= 0.2.0', :git=> "git@github.com:pmartens/rdeploy.git"
end