class AddDataaToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name_manger, :string
  end
end
