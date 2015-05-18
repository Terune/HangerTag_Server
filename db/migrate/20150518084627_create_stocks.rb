class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :product, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.integer :quantity, default:0
      t.string :name

      t.timestamps null: false
    end
  end
end
