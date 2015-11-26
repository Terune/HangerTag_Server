class ReportController < ApplicationController
    def index
        @views = View.all
        @products = Product.all
        @customers =Customer.all
        @shops = Shop.all
    end
    def show
        @product = Product.find(params[:id])
    end
end
