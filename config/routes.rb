Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # devise_for :users
  root "pages#index"
  get "car_detail", to: "pages#car_detail"
  get "car_show_detail/:id", to: "pages#car_show_detail"
  get "about", to: "pages#about" 
  get "contact", to: "pages#contact" 
  get "privacy", to: "pages#privacy"
  get "terms", to: "pages#terms"
  get "cookie_policy", to: "pages#cookie_policy"

  get "payment", to: "pages#payment"
  # Prestiges & Bussiness Cars
  get "mercedes_benz_c_class", to: "pages#mercedes_benz_c_class"
  get "mercedes_benz_e_class", to: "pages#mercedes_benz_e_class"
  get "mercedes_benz_s_class", to: "pages#mercedes_benz_s_class"
  get "bmw_7_series", to: "pages#bmw_7_series"
  get "rolls_royce_wraith", to: "pages#rolls_royce_wraith"
  get "rolls_royce_ghost", to: "pages#rolls_royce_ghost"
  get "rolls_royce_dawn", to: "pages#rolls_royce_dawn"

  # SUV cars

  get "chevrolet_tahoe", to: "pages#chevrolet_tahoe"
  get "gmc_yukon_denali", to: "pages#gmc_yukon_denali"
  get "cadillac_escalade", to: "pages#cadillac_escalade"
  get "mercedes_benz_g63", to: "pages#mercedes_benz_g63"
  get "range_rover_sport", to: "pages#range_rover_sport"
  get "range_rover_velar", to: "pages#range_rover_velar"
  get "range_rover_svr", to: "pages#range_rover_svr"
  get "audi_q8", to: "pages#audi_q8"
  get "audi_rsq8", to: "pages#audi_rsq8"
  get "lamborghini_urus", to: "pages#lamborghini_urus"
  get "bentley_bentayga", to: "pages#bentley_bentayga"
  get "rolls_royce_cullinan", to: "pages#rolls_royce_cullinan"

  # sport cars

  get "ford_mustang_cabrio", to: "pages#ford_mustang_cabrio"
  get "chevrolet_camaro_cabrio", to: "pages#chevrolet_camaro_cabrio"
  get "chevrolet_corvette_stingray", to: "pages#chevrolet_corvette_stingray"
  get "audi_r8", to: "pages#audi_r8"
  get "audi_r8_cabrio", to: "pages#audi_r8_cabrio"
  get "porsche_cayman", to: "pages#porsche_cayman"
  get "porsche_boxter", to: "pages#porsche_boxter"
  get "porsche_911", to: "pages#porsche_911"
  get "orsche", to: "pages#orsche"
  get "ferrari_488_gtb", to: "pages#ferrari_488_gtb"
  get "ferrari_488_spyder", to: "pages#ferrari_488_spyder"
  get "ferrari_roma", to: "pages#ferrari_roma"
  get "ferrari_portofino", to: "pages#ferrari_portofino"
  get "ferrari_f8_spyder", to: "pages#ferrari_f8_spyder"
  get "ferrari_f8", to: "pages#ferrari_f8"
  get "lamborghini_huracan_evo", to: "pages#lamborghini_huracan_evo"
  get "lamborghini_huracan_evo_spyder", to: "pages#lamborghini_huracan_evo_spyder"
  get "car_images", to: "cars#car_images"
  post "upload_images", to: "cars#upload_images"

  post "/checkout", to: "pages#checkout"
  post "/charge", to: "pages#charge"
  get "/card_form/:id", to: "pages#card_form"
  get "thankyou/:id", to: "pages#thankyou"





  
  resources :cars
  resources :categorys
  resources :bookings
  get "/admin", to: "cars#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
