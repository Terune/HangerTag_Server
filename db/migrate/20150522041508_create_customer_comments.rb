class CreateCustomerComments < ActiveRecord::Migration
  def change
    create_table :customer_comments do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
