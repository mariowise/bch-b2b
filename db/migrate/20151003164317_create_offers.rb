class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :product
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
