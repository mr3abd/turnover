class AddEbaToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Eba, :decimal
  end
end
