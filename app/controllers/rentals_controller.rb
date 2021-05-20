class RentalsController < ApplicationController
    before_action :set_rental, only: [:show]

  def index
    @rentals = Rentall.all
  end

  def new
    @rental = Rental.new
    @item = Item.find(params[:item_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @item = Item.find(params[:item_id])
    @rental.item = @item
    @school = @item.school
    @category = @item.category

    if @rental.save
      redirect_to school_category_items_path(@school, @category), notice: "New Rental Saved"
    else
      render :new
    end
  end

  def show
  end

private

    def set_rental
      @rental = Rental.find(params[:id])
    end

    def rental_params
      params.require(:rental).permit(:start_day, :end_day, :start_time, :end_time)
    end


end
