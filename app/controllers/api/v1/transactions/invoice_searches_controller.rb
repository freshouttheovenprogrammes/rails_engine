class Api::V1::Transactions::InvoiceSearchesController < ApplicationController
  def show
    render json: Transaction.find(params[:id]).invoice
  end
end
