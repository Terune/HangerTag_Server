object @shop => :shop
attributes :id, :name

child(:products) do |shop|
    extends 'products/show'
end
