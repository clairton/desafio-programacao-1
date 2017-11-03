class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :purchaser_name, null: false
      t.string :item_description, null: false
      t.decimal :item_price, null: false
      t.decimal :purchase_count, null: false
      t.decimal :purchase_total, null: false
      t.string :merchant_address, null: false
      t.string :merchant_name, null: false
      t.references :input, null: false

      t.timestamps
    end
  end
end
