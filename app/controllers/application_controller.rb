class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(
          :first_name, :birthdate, :last_name, :email, :username, :password, :password_confirmation, :telephone, :sex,
          :addresses_attributes => [
              :address, :city, :postal_code, :country_id
          ]
      )
    end
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :username, :password)}
    devise_parameter_sanitizer.for(:account_update) << :name
  end


  private

  def after_sign_out_path_for(resource_or_scope)
    page_controllers_index_url
  end
end
