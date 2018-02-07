class CreatePromocodes < ActiveRecord::Migration[5.1]
  def change
    create_table :promocodes do |t|
      t.string :code
      t.integer :credit
      t.integer :limitations_use

      t.timestamps
    end
  end
end
