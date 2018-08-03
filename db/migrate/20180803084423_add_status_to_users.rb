class AddStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status, :boolean, default: false
    add_column :users, :online, :boolean, default: false
  end
end
