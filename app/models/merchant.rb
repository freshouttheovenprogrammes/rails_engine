class Merchant < ApplicationRecord
  has_many :transactions, through: :invoices
end
