class Customer < ActiveRecord::Base
    has_many :sales
    has_many :customer_comments
end
