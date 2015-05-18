class Product < ActiveRecord::Base
    self.inheritance_column=:_type_disabled
    has_many :stocks
    has_many :sale_items
end
