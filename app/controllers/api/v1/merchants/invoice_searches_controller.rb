class Api::V1::Merchants::InvoiceSearchesController < ApplicationController
  def index
    render json: Merchant.all_invoices(params[:id])
  end
end
