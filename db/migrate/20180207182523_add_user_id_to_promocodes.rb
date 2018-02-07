class AddUserIdToPromocodes < ActiveRecord::Migration[5.1]
  def change
    add_column :promocodes, :user_id, :integer
  end
end
