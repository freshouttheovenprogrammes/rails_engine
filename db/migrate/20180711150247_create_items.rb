class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :unit_price
      t.integer :merchant_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end

    add_index :items, :merchant_id
    
  end
end
