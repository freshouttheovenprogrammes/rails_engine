require "test_helper"

class Api::V1::MerchantsController::SearchesController < ActionDispatch::IntegrationTest

  def setup
    @merchants = create_list(:merchant, 3)
  end

  test "can find merchant by name parameter exact match" do
    desired_merchant = @merchants[2]

    get "/api/v1/merchants/find?name=#{desired_merchant.name}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["name"], desired_merchant.name
  end

  test "can find merchant by id parameter exact match" do
    desired_merchant = @merchants[2]

    get "/api/v1/merchants/find?id=#{desired_merchant.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_merchant.id
  end

  test "can find merchant by created_at parameter exact match" do
    desired_merchant = @merchants[2]

    get "/api/v1/merchants/find?created_at=#{desired_merchant.created_at}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_merchant.id
  end

  test "can find merchant by updated_at parameter exact match" do
    desired_merchant = @merchants[0]

    get "/api/v1/merchants/find?updated_at=#{desired_merchant.updated_at}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_merchant.id
  end
  # 
  # test "can find all merchants by name" do
  #   m1 = build(:merchant, name: "testname")
  #   m2 = build(:merchant, name: "testname")
  #
  #   get "/api/v1/merchants/find_all?"
  # end
end
