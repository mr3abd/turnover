class AddCostadaptToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :costadapt, :decimal
  end
end
