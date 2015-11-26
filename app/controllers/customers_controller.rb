class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    def show
        @customer = Customer.where("Name LIKE '%#{params[:id]}%'")
    end
end
