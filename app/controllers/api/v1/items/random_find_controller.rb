class Api::V1::Items::RandomFindController < ApplicationController
  def show
    random json: Item.order("RANDOM()").first
  end
end
