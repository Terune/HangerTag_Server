# encoding: UTF-8
class Stock < ActiveRecord::Base
  belongs_to :product
  belongs_to :shop
end
