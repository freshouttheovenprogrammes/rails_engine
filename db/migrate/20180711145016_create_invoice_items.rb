class CreateInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_items do |t|
      t.integer :item_id
      t.integer :invoice_id
      t.integer :quantity
      t.integer :unit_price
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
    add_index :invoice_items, :item_id
    add_index :invoice_items, :invoice_id
  end
end
