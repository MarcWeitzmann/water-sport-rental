class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_counter

    private

    def set_counter
        @user_count = User.count
    end

end
