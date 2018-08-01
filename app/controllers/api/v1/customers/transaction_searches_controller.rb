class Api::V1::Customers::TransactionSearchesController < ApplicationController
  def index
    render json: Customer.all_transactions(params[:id])
  end
end
