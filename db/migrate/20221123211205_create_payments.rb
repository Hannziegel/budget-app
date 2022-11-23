class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :amount
      t.datetime :created_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
