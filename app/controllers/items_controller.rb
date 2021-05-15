class ItemsController < ApplicationController
  
  before_action :set_item, only: [:show, :destroy]

  def index
    # @items = Item.all.select{ |item| item.category_id == params["category_id"].to_i && item.school_id == params["school_id"].to_i }

    @items = Item.where(category: params[:category_id], school: params[:school_id])
    @category = Category.find(params[:category_id])
    @school = School.find(params[:school_id])
  end

  def show
  end

  def new
    @item = Item.new
    @category = Category.find(params[:category_id])
    @school = School.find(params[:school_id])
  end

  def create
    @item = Item.new(item_params)
    @category = Category.find(params[:category_id])
    @school = School.find(params[:school_id])
    @item.category = @category
    @item.school = @school
    if @item.save
      redirect_to school_category_items_path(@school, @category), notice: "New Item Saved"
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "Item updated!"
      redirect_to school_category_items_path(@item.school, @item.category)
    else
      render action: :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to school_category_items_path(@item.school, @item.category), notice: 'Item deleted.'
  end
  
private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :photo)
  end

end
