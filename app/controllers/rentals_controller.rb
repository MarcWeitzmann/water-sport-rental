class RentalsController < ApplicationController
    before_action :set_rental, only: [:show]

  def index
    @rentals = Rentall.all
  end

  def show
  end

private

    def set_rental
      @rental = Rental.find(params[:id])
    end

end
