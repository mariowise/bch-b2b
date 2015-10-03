class AddFieldsToCompany < ActiveRecord::Migration
  def change
  	remove_column :companies, :name
  	remove_column :companies, :score
  	remove_column :companies, :rut
  	remove_column :companies, :category

	add_column :companies, :razon_social, :string
	add_column :companies, :rut, :string
	add_column :companies, :img_url, :string
	add_column :companies, :email, :string
	add_column :companies, :giro, :string
	add_column :companies, :direccion, :string
	add_column :companies, :comuna, :string
	add_column :companies, :coordenadas, :string
	add_column :companies, :descripcion, :text
  end
end
