class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :invoice_id
      t.integer :credit_card_number
      t.timestamp :credit_card_expiration_date
      t.string :result
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
