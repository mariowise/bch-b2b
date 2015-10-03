class AddAvatarToCompany < ActiveRecord::Migration
  def change
  	add_attachment :companies, :avatar
  end
end
