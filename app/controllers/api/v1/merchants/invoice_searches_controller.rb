class Api::V1::Merchants::InvoiceSearchesController < ApplicationController
  def index
    render json: Merchant.find(params[:id]).invoices
  end
end
