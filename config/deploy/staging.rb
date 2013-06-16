# Rails environment
set :rails_env, "staging"

# Servers settings
server "192.168.0.20", :app, :web, :db, :primary => true

# RVM configuration settings
set :rvm_ruby_string, "ruby-1.9.3-p385@#{application}"
set :rvm_type, :system
set :rvm_install_with_sudo, true

# Deploy settings
set :deploy_to, "/data/#{application}"
set :deploy_via, :remote_cache
set :branch, "master"

# SSH settings
ssh_options[:forward_agent] = true
default_run_options[:pty] = true
set :default_shell, "bash -l"

# Extra environment options
set :normalize_asset_timestamps, false

# Database config
set :database_config, {
    :adapter => "mysql2",
    :username => "root",
    :host => "localhost",
    :development => "dev_#{application}",
    :test => "test_#{application}",
    :staging => "acc_#{application}",
    :production => "#{application}"
}

set :user, "deploy"
set :runner, "deploy"
set :group, "deploy"
set :use_sudo, false

#Overrule passenger settings
require 'rdeploy/recipes/default_with_database'