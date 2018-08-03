class RemoveStatusFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :status, :boolean
    remove_column :users, :online, :boolean
  end
end
