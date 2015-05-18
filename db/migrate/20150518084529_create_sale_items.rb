class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.references :sale, index: true, foreign_key: true
      t.integer :quantity, default:0
      t.integer :price, default:0
      t.string :status

      t.timestamps null: false
    end
  end
end
