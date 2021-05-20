module Admin
    class SchoolsController < ApplicationController
        skip_before_action :authenticate_user!
        before_action :set_school, only: [:show]


        def index
            @schools = School.all
        end

        def new
            @school = School.new
        end

        def show
        end

        def create
            @school = School.new(school_params)
            if @school.save
                redirect_to admin_schools_path(@school), notice: "New School Saved"
              else
                render :new
              end
        end

        def edit
            @school = School.find(params[:id])
        end

        def update
            @school = School.find(params[:id])
            if @school.update_attributes(school_params)
              flash[:success] = "School updated!"
              redirect_to admin_schools_path(@school)
            else
              render action: :edit
            end
          end

        private

        def set_school
            @school = School.find(params[:id])
        end

        def school_params
            params.require(:school).permit(:name, :street, :city, :email,:phone, :user_id, :photo)
          end
    end
end
