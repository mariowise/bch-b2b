class AddPendingMessagesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pendingMessages, :integer
  end
end
