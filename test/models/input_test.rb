require 'test_helper'

class InputTest < ActiveSupport::TestCase
  test "parse with 4" do
  	file = File.new(Rails.root.join('example_input.tab'))
  	input = Input.parse(file)

    assert input.purchases.size == 4

    assert input.total == 95
  end
end
