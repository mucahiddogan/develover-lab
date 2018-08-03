class AddVoterToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :voter, :string, default: [].to_yaml  
  end
end
