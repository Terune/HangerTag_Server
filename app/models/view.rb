# encoding: UTF-8
class View < ActiveRecord::Base
  belongs_to :Customer
  belongs_to :Product
  belongs_to :Shop
end
