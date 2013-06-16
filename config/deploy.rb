# ======================================
# = Base deploy script for application =
# ======================================
# Run with: bundle exec cap STAGE deploy
# ======================================

set :stages, %w(staging production)
set :default_stage, "staging"
set :application, "APPLICATION NAME"
set :scm, "git"
set :scm_verbose, true
set :repository, "git@github.com:/cgservices/#{application}.git"
set :git_enable_submodules, 1

# ======================================
require 'bundler/setup'
require 'rdeploy/recipes/default_with_database'

# use local template instead of included one with capistrano-maintenance
set :maintenance_template_path, 'app/views/admin/maintenance.html.erb'

# disable the warning on how to configure your server
set :maintenance_config_warning, false