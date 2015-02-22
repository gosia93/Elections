class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Brak dostępu!"
    redirect_to main_app.root_url, :alert =>exception.message
  end

  protected
  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
     devise_parameter_sanitizer.for(:account_update) << :name
  end
  rescue_from ActiveRecord::RecordNotFound, 
  :with => :record_not_found 
  
  private 
  
  def record_not_found 
    render :text => "404 Not Found", :status => 404 
 end
end
