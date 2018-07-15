require "test_helper"

class Api::V1::MerchantsController::SearchesController < ActionDispatch::IntegrationTest
  test "can find merchant by name parameter" do
    create_list(:merchant, 3)

    get "/api/v1/merchants?find?q=bob_3"

    assert_response :success #what kind of 200 would this be?

  end
end
