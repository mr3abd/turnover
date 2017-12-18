class AddEcbToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Ecb, :decimal
  end
end
