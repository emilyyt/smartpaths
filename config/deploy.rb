# RVM

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'default'
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
set :repository,  "git@github.com:emilyyt/smartpaths.git"
set :branch, "master"

# VPS

role :web, "192.241.135.55"
role :app, "192.241.135.55"
role :db,  "192.241.135.55", :primary => true
role :db,  "192.241.135.55"

# Passenger

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end