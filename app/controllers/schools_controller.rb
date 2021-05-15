class SchoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_school, only: [:show]

  def index
    @schools = School.all
  end

  def show
  end

  private

    def set_school
      @school = School.find(params[:id])
    end
end
