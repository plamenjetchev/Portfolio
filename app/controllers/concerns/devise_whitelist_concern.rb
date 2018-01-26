module DeviseWhitelistConcern 
  extend ActiveSupport::Concern

  included do 
    before_action :configure_permissions, if: :devise_controller?
  end

  def configure_permissions
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end