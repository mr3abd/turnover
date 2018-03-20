class CreateJoinTablePromocodeUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :promocodes, :users do |t|
      t.index [:promocode_id, :user_id]
      t.index [:user_id, :promocode_id]
    end
  end
end
