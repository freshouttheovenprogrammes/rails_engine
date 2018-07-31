class Api::V1::Merchants::InvoiceSearchesController < ApplicationController
  def merchant_invoices
    render json: Merchant.all_invoices(params[:id])
  end
end
