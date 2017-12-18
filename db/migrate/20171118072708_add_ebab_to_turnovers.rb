class AddEbabToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :Ebab, :decimal
  end
end
