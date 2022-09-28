class PagesController < ApplicationController
    layout "pages_layout"

    def index
        @cars = Car.all
    end

    def car_detail
        if params[:search].present?
            @cars = Car.where('lower(name) LIKE ?', "%#{params[:search].downcase}%")
        elsif params[:brand].present? || params[:model].present? || params[:type].present? 
            @cars = Car.where('lower(brand) LIKE ? OR lower(model) LIKE ? OR lower(body_type) LIKE ?', params[:brand].downcase, params[:model].downcase, params[:type].downcase)
        else
            @cars = Car.all
        end

        respond_to do |format|
            format.html
            format.js {@cars}
        end
    end

    def car_show_detail
        @car = Car.find(params[:id])
    end

    def about
    end

    def contact
    end
    
end
