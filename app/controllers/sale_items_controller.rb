class SaleItemsController < ApplicationController
    def index
        @sale_items = Sale_item.all
    end
    def show
        @sale_item = Sale_item.find(params[:Sale])
    end
end
