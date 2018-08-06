class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.string :number
      t.decimal :quote_amount
      t.decimal :amount
      t.references :sd, foreign_key: true
      t.integer :category, default: 0, null: false

      t.timestamps
    end
    add_index :orders, :category
  end
end
