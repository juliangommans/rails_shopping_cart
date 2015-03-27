#require_relative 'spec_test_helper'
require_relative './support/controller_helpers'
require 'devise'

RSpec.configure do |config|


  config.include Devise::TestHelpers, type: :controller

  config.extend SpecTestHelper, :type => :controller

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

 

end
