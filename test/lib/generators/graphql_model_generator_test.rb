require 'test_helper'
require 'generators/graphql_model/graphql_model_generator'

class GraphqlModelGeneratorTest < Rails::Generators::TestCase
  tests GraphqlModelGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
