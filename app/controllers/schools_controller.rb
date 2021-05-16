class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_school, only: [:show]

  def index
    @schools = School.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @schools.geocoded.map do |school|
      {
        lat: school.latitude,
        lng: school.longitude,
        infoWindow: render_to_string(partial: "/schools/info_window", locals: { school: school }),
        image_url: helpers.asset_url('pin.png')
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
