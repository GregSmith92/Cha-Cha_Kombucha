require 'test_helper'

class KombuchaControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get kombucha_name_url
    assert_response :success
  end

  test "should get price:integer" do
    get kombucha_price:integer_url
    assert_response :success
  end

  test "should get rating:integer" do
    get kombucha_rating:integer_url
    assert_response :success
  end

  test "should get flavour" do
    get kombucha_flavour_url
    assert_response :success
  end

  test "should get user:references" do
    get kombucha_user:references_url
    assert_response :success
  end

end
