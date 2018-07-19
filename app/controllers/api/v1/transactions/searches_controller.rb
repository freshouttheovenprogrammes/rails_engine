class Api::V1::Transactions::SearchesController < ApplicationController
  def show
    render json: (Transaction.where(transaction_params))
  end

  def index
    render json: (Transaction.find_all(transaction_params))
  end

  private

  def transaction_params
    params.permit(:id,
                  :invoice_id,
                  :credit_card_number,
                  :credit_card_expiration_date,
                  :result,
                  :created_at,
                  :updated_at)
  end
end
