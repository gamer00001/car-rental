class ApplicationController < ActionController::Base

    def sign_in_path_for(resource)
        dashboard_path
    end
end
