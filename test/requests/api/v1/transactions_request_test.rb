require 'test_helper'

class Api::V1::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "gets index of all transaction" do
    create_list(:transaction, 3)

    get api_v1_transactions_path

    transactions = JSON.parse(response.body)

    assert_equal transactions.count, 3
  end
end
