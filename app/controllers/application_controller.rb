class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  
  before_filter :authenticate_user!

  layout :layout_by_resource

  add_breadcrumb "Inicio", :root_path

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected
  def configure_devise_permitted_parameters
    registration_params = [:name, :address, :country, :email, :phone, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

  def layout_by_resource
    if devise_controller?
      "public"
    else
      "application"
    end
  end

  def user_not_authorized
    redirect_to request.referer || "/", alert: "No tienes permisos para realizar esta operación."
  end

end
