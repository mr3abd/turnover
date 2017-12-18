class AddEbacToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Ebac, :decimal
  end
end
