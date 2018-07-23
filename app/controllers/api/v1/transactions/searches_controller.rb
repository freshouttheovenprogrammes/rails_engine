class Api::V1::Transactions::SearchesController < ApplicationController
  def show
    render json: "result".in?(column_param) ? (Transaction.find_by("lower(#{column_param}) = ?", value_param)) : (Transaction.find_by(transaction_params))
  end

  def index
    render json: (Transaction.where(transaction_params))
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
