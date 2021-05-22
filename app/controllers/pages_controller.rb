class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  private

   def is_admin?
     unless current_user.is_admin?
       flash.alert = "Sorry, you don't have permissions to perform this action."
       redirect_to root_path
     end
   end

end
