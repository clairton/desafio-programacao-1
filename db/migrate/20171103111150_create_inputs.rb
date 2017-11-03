class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.string :content, null: false
      t.decimal :total, null: false

      t.timestamps
    end
  end
end
