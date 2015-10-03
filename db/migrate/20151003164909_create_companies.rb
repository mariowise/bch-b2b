class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :score
      t.string :rut
      t.string :category

      t.timestamps null: false
    end
  end
end
