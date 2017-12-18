class AddEaaToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Eaa, :decimal
  end
end
