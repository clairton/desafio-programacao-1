require 'test_helper'

class InputsControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_input_url
    assert_response :success
  end

  test "should create input" do
    file = File.new(Rails.root.join('example_input.tab'))
    assert_difference('Input.count') do
      post inputs_url, params: { input: { file: fixture_file_upload(file, 'text/csv') } }
    end

    assert_redirected_to input_url(Input.last)
  end
end
