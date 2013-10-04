require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'spree/testing_support/common_rake'

desc "Generates a dummy app for testing"
task :test_app do
  ENV['LIB_NAME'] = 'spree_honeybadger'
  Rake::Task['common:test_app'].invoke
end
