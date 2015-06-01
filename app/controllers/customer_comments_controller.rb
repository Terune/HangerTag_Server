class CustomerCommentsController < ApplicationController
    def index
        @customer_comments = CustomerComment.all
    end
    def show
        @customer_comment = CustomerComment.find(params[:id])
    end
end
