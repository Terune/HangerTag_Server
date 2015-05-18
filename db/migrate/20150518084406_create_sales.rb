class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :user, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.integer :quantity
      t.datetime :time
      t.integer :price, default:0
      t.string :status

      t.timestamps null: false
    end
  end
end
