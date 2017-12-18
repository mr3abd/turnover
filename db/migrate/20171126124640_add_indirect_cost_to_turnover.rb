class AddIndirectCostToTurnover < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :indirect_cost, :decimal
  end
end
