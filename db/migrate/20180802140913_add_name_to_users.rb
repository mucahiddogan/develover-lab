class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phonenumber, :integer
    add_column :users, :job, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :reference_note, :text
  end
end
