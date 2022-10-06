class CarsController < ApplicationController
    before_action :authenticate_admin_user!
    before_action :set_car, except: [:index]
    layout "dashboard"
    
    def index
        @cars = Car.all
    end

    def new
    end

    def create
        @car = Car.create(car_params)
        if @car.errors.size == 0 
            redirect_to @car
        else
            render "new"
        end
    end

    def edit
    end

    def car_images
    end

    def upload_images
        car = Car.find(params[:car_id])
        params[:images].each { |image_file_name| 
            car.car_images.create!(
                image_file_name: image_file_name,
            )
        }
        redirect_to cars_path
    end
    

    def update
        @car.update(car_params)
        redirect_to car_path(@car)
    end

    def show
    end

    def destroy
        @car.destroy
        redirect_to cars_path
    end


    private
        def set_car
            @car = params[:id].present? ? Car.find(params[:id]) :  Car.new  
        end
        def car_params
            params.permit(:name, :model, :number, :price, :image, :category_id, :feature, :description, :images)
        end
end
