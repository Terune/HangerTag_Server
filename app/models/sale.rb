# encoding: UTF-8
class Sale < ActiveRecord::Base
  belongs_to :customer
  belongs_to :shop

  has_many :sale_items
end
