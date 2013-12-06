# RVM

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, '1.9.3-p362'
set :rvm_type, :user

# Bundler

require "bundler/capistrano"

# General

set :application, "smartpaths"
set :user, "master"

set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy

set :use_sudo, false

# Git

set :scm, :git
set :repository,  "https://github.com/emilyyt/smartpaths.git"
set :branch, "master"

# VPS

role :web, "192.241.135.55"
role :app, "192.241.135.55"
role :db,  "192.241.135.55", :primary => true
role :db,  "192.241.135.55"

# Passenger

namespace :deploy do
  desc "Start server"
  task :start, :roles => :app do
    run "#{try_sudo} touch #{File.join(release_path,'tmp','restart.txt')}"
  end
  
  # not supported by Passenger server
  task :stop, :roles => :app do
  end
  
  desc "Restart server"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(release_path,'tmp','restart.txt')}"
  end
  
  desc "Symlink shared configs and folders on each release."
  task :symlink_shared, :roles => :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    #run "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
  end
  
  desc "Execute migrations"
  task :migrate, :roles => :db do
    run "bundle exec rake db:migrate"
  end
end
 
after 'deploy:update_code', 'deploy:symlink_shared'