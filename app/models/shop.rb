class Shop < ActiveRecord::Base
    has_many :stocks
    has_many :products, through: :stocks
    has_many :sales
    has_many :customer_comments
end
