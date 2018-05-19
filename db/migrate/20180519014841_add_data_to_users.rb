class AddDataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :activity, :string
    add_column :users, :city, :string
    add_column :users, :workers, :integer
    add_column :users, :name_manger_acc, :string
    add_column :users, :jobpostion, :string
    add_column :users, :phone, :string
  end
end
