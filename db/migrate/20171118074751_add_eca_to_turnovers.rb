class AddEcaToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Eca, :decimal
  end
end
