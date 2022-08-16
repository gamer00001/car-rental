ActiveAdmin.register Car do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :number, :model, :price, :image, :category_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :number, :model, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Car Details" do
     f.input :name
     f.input :number
     f.input :model
     f.input :price
     f.input :category_id , :as => :select, :collection => Category.all.collect {|category| [category.name, category.id] }
     f.input :image, :as => :file
   end
   f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :category_id
      row :number
      row :model
      row :price
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      # Will display the image on show object page
    end
   end

  
end
