class ApplicationController < ActionController::Base
  helper_method :authenticate_admin
   before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :set_allergens

   def authenticate_admin
     return if current_user.admin?
     redirect_to root_path, notice: 'You are not permitted to doing this!'
   end


    protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:account_update, keys: [:pesel, :birth_date, :avatar ])
   end

   def set_allergens
     @allergens ||= Allergen.all
   end
end
