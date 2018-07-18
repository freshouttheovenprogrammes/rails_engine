class Api::V1::Invoices::SearchesController < ApplicationController
  def show
    render json: (Invoice.where(invoices_params))
  end

  def index
    render json: (Invoice.find_all(invoices_params))
  end

  private

  def invoices_params
    params.permit(:id, :customer_id, :merchant_id, :status, :created_at, :updated_at)
  end
end
