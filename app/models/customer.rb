# encoding: UTF-8
class Customer < ActiveRecord::Base
    has_many :sales
    has_many :customer_comments
    has_many :views
end
