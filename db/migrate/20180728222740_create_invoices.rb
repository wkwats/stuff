class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :number
      t.integer :milestone, default: 0, null: false
      t.decimal :amount
      t.references :order, foreign_key: true
      t.integer :status, default: 0, null: false

      t.timestamps
    end
    add_index :invoices, :milestone
    add_index :invoices, :status
  end
end
