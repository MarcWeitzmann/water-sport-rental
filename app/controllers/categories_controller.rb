class CategoriesController < ApplicationController

  before_action :set_school

  def index
    @categories = Category.all
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

end
