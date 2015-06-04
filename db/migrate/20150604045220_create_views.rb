class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.references :Customer, index: true, foreign_key: true
      t.references :Product, index: true, foreign_key: true
      t.references :Shop, index: true, foreign_key: true
      t.integer :Point, default:0

      t.timestamps null: false
    end
  end
end
