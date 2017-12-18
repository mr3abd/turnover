class AddCosthireToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :costhire, :decimal
  end
end
