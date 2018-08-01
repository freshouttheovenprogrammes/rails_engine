class Api::V1::Transactions::InvoiceSearchesController < ApplicationController
  def show
    render json: Transaction.find_invoice(params[:id])
  end
end
