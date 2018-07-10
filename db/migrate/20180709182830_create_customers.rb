class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
