class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :customer_id
      t.integer :merchant_id
      t.integer :status
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
    add_index :invoices, :customer_id
    add_index :invoices, :merchant_id
  end
end
