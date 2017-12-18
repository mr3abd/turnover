class AddAdaptabcToTurnovers < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :aa, :decimal
    add_column :turnovers, :ab, :decimal
    add_column :turnovers, :ac, :decimal
  end
end
