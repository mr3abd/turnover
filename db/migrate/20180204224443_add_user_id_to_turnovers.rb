class AddUserIdToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :user_id, :integer
  end
end
