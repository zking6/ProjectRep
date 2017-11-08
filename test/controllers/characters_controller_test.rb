require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get characters_name:string_url
    assert_response :success
  end

  test "should get background:text" do
    get characters_background:text_url
    assert_response :success
  end

  test "should get race:string" do
    get characters_race:string_url
    assert_response :success
  end

  test "should get classes:string" do
    get characters_classes:string_url
    assert_response :success
  end

end
