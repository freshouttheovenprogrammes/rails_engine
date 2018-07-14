require "test_helper"

class InvoiceItemsControllerTest < ActionDispatch::IntegrationTest
  test "get all invoice items" do
    invoice_items = create_list(:invoice_item, 3)

    get api_v1_invoice_items_path

    invoice_items = JSON.parse(response.body)

    assert_response :success
    assert_equal(invoice_items.count, 3)
  end

  test "get one invoice item" do
    invoice_item = create(:invoice_item)

    get api_v1_invoice_item_path(invoice_item)

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], invoice_item.id
  end
end
