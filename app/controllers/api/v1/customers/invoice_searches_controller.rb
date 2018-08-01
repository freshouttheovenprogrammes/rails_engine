class Api::V1::Customers::InvoiceSearchesController < ApplicationController
  def index
    render json: Customer.all_invoices(params[:id])
  end
end
