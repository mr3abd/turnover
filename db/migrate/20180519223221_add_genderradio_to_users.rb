class AddGenderradioToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender_type, :boolean
  end
end
