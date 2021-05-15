class ItemsController < ApplicationController
  
  before_action :set_item, only: [:show]

  def index
    # @items = Item.all.select{ |item| item.category_id == params["category_id"].to_i && item.school_id == params["school_id"].to_i }

    @items = Item.where(category: params[:category_id], school: params[:school_id])
  end

  def show
  end

private

    def set_item
      @item = Item.find(params[:id])
    end

end
  