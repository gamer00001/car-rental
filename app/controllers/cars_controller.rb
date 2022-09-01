class CarsController < ApplicationController
    before_action :authenticate_admin_user!
    layout "dashboard"
    
    def index
        @cars = Car.all
    end

    def new
        @car = Car.new
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
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id]).update(car_params)
        redirect_to car_path(@car)
    end

    def show
        @car = Car.find(params[:id])
    end

    def destroy
        Car.find(params[:id]).destroy
        redirect_to cars_path
    end


    private
        def car_params
            params.require(:car).permit(:name, :model, :number, :price, :image, :category_id)
        end
end
