class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
      t.string :name
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
