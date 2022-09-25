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
            @car = params[:id].present? ? Car.find(params[:id]) :  Car.New  
        end
        def car_params
            params.require(:car).permit(:name, :model, :number, :price, :image, :category_id)
        end
end
