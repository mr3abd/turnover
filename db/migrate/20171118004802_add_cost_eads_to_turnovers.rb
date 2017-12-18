class AddCostEadsToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :CostEads, :decimal
  end
end
