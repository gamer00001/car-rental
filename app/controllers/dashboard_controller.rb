class DashboardController < ApplicationController
    layout "dashboard"
    def index
        @cars = Car.all
    end
end
