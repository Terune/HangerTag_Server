class ViewsController < ApplicationController

    def index
        @views = View.all
    end
    def show
        @view = View.find(params[:id])
        respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @views }
            format.json { render :json => @views }
        end
    end

    def create
        @view = View.new(view_params)

        respond_to do |format|
        if @view.save
        format.html { redirect_to @view, notice: 'view_count was successfully created.' }
        format.json { render action: 'show', status: :created, location: @view }
        else
        format.html { render action: 'new' }
        format.json { render json: @view.errors, status: :unprocessable_entity }
        end
     end
    end

# PATCH/PUT /players/1
# PATCH/PUT /players/1.json
    def update
    respond_to do |format|
    if @view.update(view_params)
    format.html { redirect_to @view, notice: 'view_count was successfully updated.' }
    format.json { head :no_content }
    else
    format.html { render action: 'edit' }
    format.json { render json: @view.errors, status: :unprocessable_entity }
    end
    end
    end

# DELETE /players/1
# DELETE /players/1.json
    def destroy
    @view = View.find(params[:id])
    respond_to do |format|
    if @view.present?
    if @view.destroy
   format.html { redirect_to views_url }
   format.json { head :no_content }
    else
    format.html { render action: 'delete' }
    format.json { render json: @view.errors, status: :unprocessable_entity }
    end
    end
    end
    end

    private
# Use callbacks to share common setup or constraints between actions.
    def set_view
    @view = View.find(params[:id])
    end

# Never trust parameters from the scary internet, only allow the white list through.
    def view_params
    params.require(:view).permit(:Customer_id, :Product_id, :Shop_id, :P:oint)
    end
end
