class AddProductownerToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :productowner, :boolean
  end
end
