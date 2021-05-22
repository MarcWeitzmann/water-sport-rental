class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(item: params[:item_id], category: params[:category_id], school: params[:school_id])
    @item = Item.find(params[:item_id])
    @category = Category.find(params[:category_id])
    @school = School.find(params[:school_id])
  end

  def new
    @review = Review.new
  end

  def create
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    @review.item = @item
    if @review.save
      redirect_to item_path(@item, anchor:"review-#{@review.id}")
    else
      render 'item/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
