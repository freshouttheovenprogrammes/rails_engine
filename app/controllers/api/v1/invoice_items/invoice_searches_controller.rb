class Api::V1::InvoiceItems::InvoiceSearchesController < ApplicationController
  def show
    render json: InvoiceItem.find(params[:id]).invoice
  end
end
