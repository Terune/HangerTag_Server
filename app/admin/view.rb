ActiveAdmin.register View do

permit_params :Customer_id, :Product_id, :Shop_id, :Point

  index do
    selectable_column
    id_column
    column :Customer
    column :Product
    column :Shop
    column :Point
    column :created_at
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
