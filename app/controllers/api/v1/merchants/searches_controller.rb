class Api::V1::Merchants::SearchesController < ApplicationController
  def show
    render json: (Merchant.where name: params["name"])
  end

  private

  def search(&block)
    yield if block_given?
  end
end
