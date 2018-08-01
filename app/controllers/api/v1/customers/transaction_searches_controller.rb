class Api::V1::Customers::TransactionSearchesController < ApplicationController
  def index
    render json: Customer.find(params[:id]).transactions
  end
end
