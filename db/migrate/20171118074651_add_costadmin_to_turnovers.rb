class AddCostadminToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :costadmin, :decimal
  end
end
