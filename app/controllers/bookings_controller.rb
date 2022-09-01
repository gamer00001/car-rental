class BookingsController < ApplicationController
    before_action :authenticate_admin_user!
    layout "dashboard"
    before_action :set_booking, except: [:index, :create]

    def index
        @bookings = Booking.all
    end

    def new
    end

    def create
        byebug
        @booking = Booking.create(booking_params)
        if @booking.errors.size == 0 
            redirect_to @booking
        else
            render "new"
        end
    end

    def edit
    end

    def update
        @booking.update(booking_params)
        redirect_to booking_path(@booking)
    end

    def show
        
    end

    def destroy
        @booking.destroy
        redirect_to bookings_path
    end


    private
        def booking_params
            params.require(:booking).permit(:first_name, :last_name, :mobile, :email, :car_id, :driving_license_image, :start_date, :end_date)
        end

        def set_booking
            @booking = params[:id].present? ? Booking.find(params[:id]) : Booking.new
        end
end
