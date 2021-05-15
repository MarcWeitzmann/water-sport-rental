class SchoolsController < ApplicationController

before_action :set_school, only: [:show]

  def index
    @schools = School.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @schools.geocoded.map do |school|
      {
        lat: school.latitude,
        lng: school.longitude
      }
    end
  end

  def show
  end

  private

    def set_school
      @school = School.find(params[:id])
    end
end
