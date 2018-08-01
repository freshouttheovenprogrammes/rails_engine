class ApplicationController < ActionController::API
  def column_param # QUESTION: is there a better way to call the key and hash here?
    params.keys.first
  end

  def value_param
    params.values.first.downcase
  end
end
