class AddLoscontractToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :loscontract, :decimal
    add_column :turnovers, :lca, :decimal
    add_column :turnovers, :lcb, :decimal
    add_column :turnovers, :lcc, :decimal
  end
end
