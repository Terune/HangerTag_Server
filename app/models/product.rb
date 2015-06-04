# encoding: UTF-8
class Product < ActiveRecord::Base
    self.inheritance_column=:_type_disabled
    has_many :stocks
    has_many :sale_items
    has_many :customer_comments
    has_many :views
#    mount_uploaders :picture
end
