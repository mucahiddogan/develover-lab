class RemoveVoterFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :voter, :string
    remove_column :users, :voters, :string

  end
end
