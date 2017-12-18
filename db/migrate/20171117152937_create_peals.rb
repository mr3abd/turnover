class CreatePeals < ActiveRecord::Migration[5.1]
  def change
    create_table :peals do |t|
      t.string :name
      t.date :Date
      t.integer :point
      t.float :money
      t.text :desc

      t.timestamps
    end
  end
end
