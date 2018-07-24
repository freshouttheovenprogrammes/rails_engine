require 'test_helper'

class Api::V1::TransactionsController::SearchesController < ActionDispatch::IntegrationTest
  def setup
    @transactions = create_list(:transaction, 3)
  end

  test "can find transaction by invoice id parameter exact match" do
    desired_transaction = @transactions[2]

    get "/api/v1/transactions/find?invoice_id=#{desired_transaction.invoice_id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["invoice_id"], desired_transaction.invoice_id
  end

  test "can find transaction by credit card number parameter exact match" do
    desired_transaction = @transactions[2]

    get "/api/v1/transactions/find?credit_card_number=#{desired_transaction.credit_card_number}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["credit_card_number"], desired_transaction.credit_card_number
  end

  test "can find transaction by id parameter exact match" do
    desired_transaction = @transactions[2]

    get "/api/v1/transactions/find?id=#{desired_transaction.id}"

    result = JSON.parse(response.body)

    assert_response :success
    assert_equal result["id"], desired_transaction.id
  end

  test "can find transaction by result parameter exact match" do
    desired_transaction = @transactions[1]

    get "/api/v1/transactions/find?result=#{desired_transaction.result}"

    assert_response :success
  end
end
