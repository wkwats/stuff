class CreateSds < ActiveRecord::Migration[5.2]
  def change
    create_table :sds do |t|
      t.bigint :number
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
