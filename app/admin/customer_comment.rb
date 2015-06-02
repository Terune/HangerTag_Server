ActiveAdmin.register CustomerComment do

permit_params :customer_id, :product_id, :shop_id, :title, :body
index do
selectable_column
id_column
column :customer
column :product
column :shop
column :title
column :body
actions
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
