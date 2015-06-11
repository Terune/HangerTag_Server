class ReportController < ApplicationController
    def index
        @views = View.all
    end
    def show
        @product = Product.find(params[:id])
    end
end
