class ProfileController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  add_breadcrumb "Mi perfil", :profile_show_path

  def show
  end

  def edit
  	add_breadcrumb "Editar"
  end

  def update
  	add_breadcrumb "Editar"

  	if @user.update(user_params)
  		redirect_to profile_show_path, notice: "Tus datos han sido actualizados."
  	else
  		redirect_to profile_edit_path, alert: "No ha sido posible actualizar tus datos"
  	end
  end	

  private
  	def set_user
  		@user = current_user
  	end

  	def user_params
  		params.require(:user).permit(
  			:name,
  			:lastname,
  			:email,
  			:phone,
        :birthdate,
  			:password,
  			:password_confirmation,
        :avatar
  		)
  	end
end
