class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_school

  def index
    @categories = Category.all
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

end
