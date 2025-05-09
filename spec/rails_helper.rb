# Add this to the top
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'
require 'factory_bot_rails'  # Add this line

# Add this if it's not already present
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Add this inside the RSpec.configure block
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  # Use the following instead of deleting fixtures if using FactoryBot
  config.use_transactional_fixtures = true
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
