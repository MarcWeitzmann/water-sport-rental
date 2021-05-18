class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Avatar updated!"
      #redirect_to school_category_items_path(@item.school, @item.category)
    else
      render action: :edit
    end
  end

  private

  def set_user
    @user = Item.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:photo)
  end

end
