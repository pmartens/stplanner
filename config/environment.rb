# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Stplanner::Application.initialize!

# Exception Notification settings
Stplanner::Application.config.middleware.use ExceptionNotifier,
                                           :email_prefix => "[#{:application} Env:#{Rails.env}] ",
                                           :sender_address => %{"#{:application}" <pieter.en.mieke@gmail.com},
                                           :exception_recipients => %w{pieter.en.mieke@gmail.com}