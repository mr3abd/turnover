class CreateDashobrads < ActiveRecord::Migration[5.1]
  def change
    create_table :dashobrads do |t|

      t.timestamps
    end
  end
end
