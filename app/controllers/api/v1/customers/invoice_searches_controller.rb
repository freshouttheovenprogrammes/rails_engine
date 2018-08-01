class Api::V1::Customers::InvoiceSearchesController < ApplicationController # QUESTION: what is the limit on how explicit to be with each function.
  def customer_invoices
    render json: Customer.all_invoices(params[:id])
  end
end
