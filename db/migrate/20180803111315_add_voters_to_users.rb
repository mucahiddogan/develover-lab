class AddVotersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :voters, :integer, array: true, default: [] 
  end
end
