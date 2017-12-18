class AddCostmagmentToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :costmagment, :decimal
  end
end
