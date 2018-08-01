class Api::V1::Invoices::TransactionsSearchesController < ApplicationController
  def index
    render json: Invoice.find(params[:id]).transactions
  end
end
