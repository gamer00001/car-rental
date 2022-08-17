ActiveAdmin.register Booking do
  Formtastic::FormBuilder.perform_browser_validations = true
  before_action :skip_sidebar!, :only => :index

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :email, :mobile, :driving_license_image, :car_id, :start_date, :end_date
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Booking Details" do
     f.input :first_name, input_html: {required: true} 
     f.input :last_name, input_html: {required: true} 
     f.input :email, input_html: {required: true, type: "email"} 
     f.input :mobile, input_html: {required: true} 
     f.input :start_date, input_html: {required: true, type: "date"} 
     f.input :end_date, input_html: {required: true, type: "date"} 
     f.input :car_id , :as => :select, :collection => Car.all.collect {|car| [car.name, car.id] }
     f.input :driving_license_image, :as => :file, input_html: {required: true} 
   end
   f.actions
  end

  index do
    id_column
    column :first_name
    column :last_name
    column :email
    column :mobile
    column :start_date
    column :end_date
    column :total_price
    column :advance_booking_price
    column :car_id do |booking|
      Car.find(booking.car_id).name
    end
    column :driving_license_image do |booking|
      image_tag(booking.driving_license_image.url(:thumb))
    end
    actions
  end


  show do |ad|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :mobile
      row :total_price
      row :advance_booking_price
      row :car_id do 
        Car.find(ad.car_id).name
      end
      row :driving_license_image do
        image_tag(ad.driving_license_image.url(:thumb))
      end
      # Will display the image on show object page
    end
   end
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :mobile, :driving_license_image_file_name, :driving_license_image_content_type, :driving_license_image_file_size, :driving_license_image_updated_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
