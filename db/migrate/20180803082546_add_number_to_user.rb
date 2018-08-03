class AddNumberToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_number, :integer
  end
end
