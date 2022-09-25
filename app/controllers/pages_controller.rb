class PagesController < ApplicationController
    layout "pages_layout"

    def index
        @cars = Car.all
    end

    def car_detail
    end

    def car_show_detail
        @car = Car.find(params[:id])
    end
end
