class AddTurnoveratioToTurnover < ActiveRecord::Migration[5.1]
  def change
    add_column :turnovers, :turnover_ratio, :decimal
  end
end
