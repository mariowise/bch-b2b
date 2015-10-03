class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :actions
      t.integer :price

      t.timestamps null: false
    end
  end
end
