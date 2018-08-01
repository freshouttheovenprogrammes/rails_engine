class Api::V1::Invoices::InvoiceItemsSearchesController < ApplicationController
  def index
    render json: Invoice.find(params[:id]).invoice_items
  end
end
