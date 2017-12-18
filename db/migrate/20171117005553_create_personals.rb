class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.string :name
      t.date :Date
      t.integer :point
      t.decimal :money
      t.text :desc

      t.timestamps
    end
  end
end
