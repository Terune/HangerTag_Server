class CustomerCommentsController < ApplicationController
    def index
        @customer_comments = CustomerComment.all
    end
    def show
        @customer_comment = CustomerComment.find(params[:id])
    end
    def create
        @customer_comment = CustomerComment.new(comment_params)

        respond_to do |format|
        if @customer_comment.save
        format.html { redirect_to @customer_comment, notice: 'Player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_comment }
        else
        format.html { render action: 'new' }
        format.json { render json: @customer_comment.errors, status: :unprocessable_entity }
        end
     end
    end

# PATCH/PUT /players/1
# PATCH/PUT /players/1.json
    def update
    respond_to do |format|
    if @customer_comment.update(comment_params)
    format.html { redirect_to @customer_comment, notice: 'comment was successfully updated.' }
    format.json { head :no_content }
    else
    format.html { render action: 'edit' }
    format.json { render json: @customer_comment.errors, status: :unprocessable_entity }
    end
    end
    end

# DELETE /players/1
# DELETE /players/1.json
    def destroy
    @customer_comment = CustomerComment.find(params[:id])
    respond_to do |format|
    if @customer_comment.present?
    if @customer_comment.destroy
   format.html { redirect_to customer_comments_url }
   format.json { head :no_content }
    else
    format.html { render action: 'delete' }
    format.json { render json: @customer_comment.errors, status: :unprocessable_entity }
    end
    end
    end
    end

    private
# Use callbacks to share common setup or constraints between actions.
    def set_comment
    @customer_comment = CustomerComment.find(params[:id])
    end

# Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
params.require(:customer_comment).permit(:customer_id, :product_id, :shop_id, :title, :body)
    end
end
