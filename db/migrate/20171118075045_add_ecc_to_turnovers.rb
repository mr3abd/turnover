class AddEccToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Ecc, :decimal
  end
end
