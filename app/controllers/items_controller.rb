class ItemsController < ApplicationController
	def create
    @user = current_user
    @item = current_user.items.build(params.require(:item).permit(:name))

    @new_item = Item.new

    if @item.save
      #flash[:notice] = "Your to-do was posted successfully.";
    else
      #flash[:error] = "There was an error posting your to-do. Please try again.";
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
   @item = current_user
   @item = current_user.items.find(params[:id])

   if @item.destroy
     flash[:notice] = "Item was removed."  
   else
     flash[:error] = "Item couldn't be deleted. Try again."
   end

   respond_to do |format|
      format.html
      format.js
   end
  end
end