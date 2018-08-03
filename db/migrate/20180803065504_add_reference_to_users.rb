class AddReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reference_code, :string
    add_column :users, :referance_id, :string
    add_column :users, :status, :boolean
    add_column :users, :votes, :integer
    add_column :users, :online, :boolean
  end
end
