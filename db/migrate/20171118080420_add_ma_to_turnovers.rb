class AddMaToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :ma, :decimal
  end
end
