class CreateSubcoPos < ActiveRecord::Migration[5.2]
  def change
    create_table :subco_pos do |t|
      t.date :date
      t.string :details
      t.string :number
      t.decimal :amount
      t.references :sd, foreign_key: true

      t.timestamps
    end
  end
end
