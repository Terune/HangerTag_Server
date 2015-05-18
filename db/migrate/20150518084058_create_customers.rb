class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :user_id
      t.string :nickname
      t.string :email
      t.integer :level, default:0
      t.date :birthday
      t.integer :point, default:0
      t.string :gender
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
