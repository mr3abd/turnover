class AddCreditToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :credit, :integer
  end
end
