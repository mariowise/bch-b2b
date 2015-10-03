class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.string :goal
      t.string :current_money

      t.timestamps null: false
    end
  end
end
