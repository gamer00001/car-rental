Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # devise_for :users
  root "pages#index"
  get "car_detail", to: "pages#car_detail"
  get "car_show_detail/:id", to: "pages#car_show_detail"
  resources :cars
  resources :categorys
  resources :bookings
  get "/admin", to: "cars#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
