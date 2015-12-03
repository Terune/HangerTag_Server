class HomeController < ApplicationController
  def index
        @products = Product.all
        @customers = Customer.all
        @shops = Shop.all
  end
end
