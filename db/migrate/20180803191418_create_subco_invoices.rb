class CreateSubcoInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :subco_invoices do |t|
      t.date :date
      t.string :details
      t.string :invoice_num
      t.decimal :amount
      t.references :subco_po, foreign_key: true
      t.integer :milestone, default: 0, null: false
      t.integer :status, default: 0, null: false
      t.integer :pv_number
      t.integer :approval, default: 0, null: false

      t.timestamps
    end
    add_index :subco_invoices, :milestone
    add_index :subco_invoices, :status
    add_index :subco_invoices, :pv_number
    add_index :subco_invoices, :approval
  end
end
