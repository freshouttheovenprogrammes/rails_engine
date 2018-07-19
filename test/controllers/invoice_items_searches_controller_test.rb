require 'test_helper'

class Api::V1::InvoiceItemsController::SearchesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @invoice_items = create_list(:invoice_items, 3)
  end

  test "can find invoice_item by item id parameter exact match" do
    desired_invoice_item = @invoice_items[2]

    get "/api/v1/invoice_items/find?item_id=#{desired_invoice_item.item_id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["item_id"], desired_invoice_item.item_id
  end

  test "can find invoice_item by invoice id parameter exact match" do
    desired_invoice_item = @invoice_items[2]

    get "/api/v1/invoice_items/find?invoice_id=#{desired_invoice_item.invoice_id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["invoice_id"], desired_invoice_item.invoice_id
  end

  test "can find invoice_item by id parameter exact match" do
    desired_invoice_item = @invoice_items[2]

    get "/api/v1/invoice_items/find?id=#{desired_invoice_item.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result[0]["id"], desired_invoice_item.id
  end

  test "can find invoice_item by quantity parameter exact match" do
    this_desired_invoice_item = create(:invoice_item)

    get "/api/v1/invoice_items/find?quantity=#{this_desired_invoice_item.quantity}"

    assert_response :success
    assert_equal result[0]["id"], desired_invoice_item.id
  end

  test "can find invoice_item by unit_price parameter exact match" do
    this_desired_invoice_item = create(:invoice_item)

    get "/api/v1/invoice_items/find?unit_price=#{this_desired_invoice_item.unit_price}"

    assert_response :success
    assert_equal result[0]["id"], desired_invoice_item.id
  end
end
