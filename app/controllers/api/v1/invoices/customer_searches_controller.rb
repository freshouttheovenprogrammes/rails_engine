class Api::V1::Invoices::CustomerSearchesController < ApplicationController
  def show
    render json: Invoice.find(params[:id]).customer
  end
end
