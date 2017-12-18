class AddSallarysupervisorToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :sallarysupervisor, :decimal
  end
end
