class AddFixToProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :type
  	remove_column :projects, :current_money
  	remove_column :projects, :goal

  	add_column :projects, :description, :text
  	add_column :projects, :investment, :integer
  	add_attachment :projects, :avatar
  end
end
