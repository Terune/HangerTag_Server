object @shop => :shop
attributes :id, :name, :address, :phone

child(:products) do |shop|
    extends 'products/show'
end

child(:stocks) do |shop|
    extends 'stocks/show'
end
