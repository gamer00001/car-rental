class ApplicationController < ActionController::Base

    def sign_in_path_for(resource)
        cars_path
    end

    def after_sign_out_path_for(resource)
        new_admin_user_session_path
    end
end
