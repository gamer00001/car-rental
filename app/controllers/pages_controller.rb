class PagesController < ApplicationController
    layout "pages_layout"

    before_action :set_nav_links

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

    def privacy
    end
    
    def terms
    end

    def cookie_policy
    end

    def payment
        uri = URI.parse('https://secure.telr.com/gateway/order.json')
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
        # data = {"ivp_store": 26845, "ivp_method": "create", "ivp_authkey": "9Dvh~cKZN4@4JSLF", "ivp_amount": 4.0, "ivp_currency": "AED", "ivp_test": 1,  "ivp_cart": "1234", "ivp_desc": "rent car",  "return_auth": "http://smartproducts.ae/", 
        # "return_decl": "https://smartproducts.ae/products/y41-smartwatch", 
        # "return_can": "https://smartproducts.ae/products/r1-smartwatch" } 
        data = {"store": 26845, "method": "create", "authkey": "9Dvh~cKZN4@4JSLF", order: { "cartid": "0123456789",
        "test": "1",
        "amount": "100",
        "currency": "AED",
        "description": "Test Transaction"},
        "return": {
            "authorised": "http://www.example.com/",
            "declined": "http://www.example.com/",
            "cancelled": "http://www.example.com/"
          }
        }      
        request.body = data.to_json
        response = http.request(request) 



    end

    def mercedes_benz_c_class
    end

    def mercedes_benz_e_class
    end

    def mercedes_benz_s_class
    end

    def bmw_7_series
    end

    def rolls_royce_wraith
    end

    def rolls_royce_ghost
    end

    def rolls_royce_dawn
    end


    # SUV Cars
    def chevrolet_tahoe
    end

    def gmc_yukon_denali
    end

    def cadillac_escalade
    end

    def mercedes_benz_g63
    end

    def range_rover_sport
    end

    def range_rover_velar
    end

    def range_rover_svr
    end

    def audi_q8
    end

    def audi_rsq8
    end

    def lamborghini_urus 
    end

    def bentley_bentayga
    end

    def rolls_royce_cullinan
    end


    # sports car
    def ford_mustang_cabrio
    end

    def chevrolet_camaro_cabrio
    end

    def chevrolet_corvette_stingray
    end

    def audi_r8
    end

    def audi_r8_cabrio
    end

    def porsche_cayman
    end

    def porsche_boxter
    end

    def porsche_911
    end

    def orsche
    end

    def ferrari_488_gtb
    end

    def ferrari_488_spyder
    end

    def ferrari_roma
    end

    def ferrari_portofino
    end

    def ferrari_f8_spyder
    end

    def ferrari_f8
    end

    def lamborghini_huracan_evo
    end

    def lamborghini_huracan_evo_spyder
    end

    private
        def set_nav_links
            @cars_link = Car.select(:category_id, :name, :id).group_by(&:category_id)
        end

end
