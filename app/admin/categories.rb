ActiveAdmin.register Category do
  Formtastic::FormBuilder.perform_browser_validations = true
  before_action :skip_sidebar!, :only => :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Category" do
     f.input :name, input_html: {required: true}  
   end
   f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
