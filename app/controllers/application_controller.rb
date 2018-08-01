class ApplicationController < ActionController::API
  def column_param
    params.keys.first
  end

  def value_param
    params.values.first.downcase
  end
end
