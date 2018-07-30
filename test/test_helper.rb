require 'simplecov'
SimpleCov.start
ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"

Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)

# config isn't working..
# Shoulda::Matchers.configure do |config|
#   config.integrate do |with|
#     with.test_framework :minitest
#   end
# end



class Minitest::Unit::TestCase
  include FactoryBot::Syntax::Methods
end

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  ActiveRecord::Migration.check_pending!
  fixtures :all
  include FactoryBot::Syntax::Methods
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.logger = Rails.logger
  setup { DatabaseCleaner.start }
  teardown  { DatabaseCleaner.clean }
  # Add more helper methods to be used by all tests here...
end
