class Customer < ApplicationRecord
  has_many :invoices
  has_many :transactions, through: :invoices
  has_many :merchants, through: :invoices

  def self.all_invoices(id)
    find_by_sql("SELECT invoices.* FROM invoices
                 JOIN customers ON customers.id = invoices.customer_id
                 WHERE invoices.customer_id = #{id}")
  end

  def self.all_transactions(id)
    find_by_sql("SELECT transactions.* FROM transactions
                 JOIN customers ON customers.id = transactions.customer_id
                 WHERE transactions.customer_id = #{id}")
  end
end
