class Api::V1::Customers::InvoiceSearchesController < ApplicationController
  def index
    render json: Customer.find(params[:id]).invoices
  end
end
