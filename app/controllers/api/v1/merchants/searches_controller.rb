class Api::V1::Merchants::SearchesController < ApplicationController
  def show
    # require "pry"; binding.pry
    # search do
      # require "pry"; binding.pry
      format.json  { render json: (Merchant.where name: params["name"]) }
    # end
    # require "pry"; binding.pry
  end

  private

  def search(&block)
    # require "pry"; binding.pry
      yield if block_given?


  end
end
