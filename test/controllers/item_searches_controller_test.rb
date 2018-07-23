require 'test_helper'

class Api::V1::ItemsController::SearchesController < ActionDispatch::IntegrationTest
  def setup
    @items = create_list(:item, 3)
  end

  test "can find item by name parameter case insensitive match" do
    desired_item = @items[2]

    get "/api/v1/items/find?invoice_id=#{desired_item.name.upcase}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["name"], desired_item.name
  end

  test "can find item by description parameter case exact match" do
    desired_item = @items[2]

    get "/api/v1/items/find?description=#{desired_item.description}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["description"], desired_item.description
  end

  test "can find item by id parameter exact match" do
    desired_item = @items[2]

    get "/api/v1/items/find?id=#{desired_item.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], desired_item.id
  end

  test "can find item by unit_price parameter exact match" do
    desired_item = @items[1]

    get "/api/v1/items/find?unit_price=#{desired_item.unit_price}"

    assert_response :success
    assert response.body.include?(desired_item.unit_price.to_s)
  end

  test "can find item by merchant_id parameter exact match" do
    desired_item = @items[1]

    get "/api/v1/items/find?merchant_id=#{desired_item.merchant_id}"

    assert_response :success

    assert response.body.include?(desired_item.merchant_id.to_s)
  end
end
