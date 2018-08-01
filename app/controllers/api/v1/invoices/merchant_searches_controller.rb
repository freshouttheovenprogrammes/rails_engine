class Api::V1::Invoices::MerchantSearchesController < ApplicationController
  def show
    render json: Invoice.find(params[:id]).merchant
  end
end
