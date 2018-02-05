ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def approximatelyEqual?(number1, number2)
    decimalTolerance = 0.01 #distance between two numbers that is exceptable
    difference = (number1 - number2).abs
    difference < decimalTolerance
  end

  # Add more helper methods to be used by all tests here...
end
