class CreateTurnovers < ActiveRecord::Migration[5.1]
  def change
    create_table :turnovers do |t|
      t.string :name_company
      t.string :position
      t.decimal :sallary_left
      t.decimal :sallart_newer
      t.decimal :years_lefter
      t.decimal :sallary_manger
      t.decimal :daily_hourly
      t.decimal :agancey_cost
      t.decimal :ads_cost
      t.decimal :spentHR_timeH
      t.decimal :spentHR_timeD
      t.decimal :sallary_HR
      t.decimal :onespentinterview_timeH
      t.decimal :onespentinterview_timeD
      t.decimal :oneSallary_interviewer
      t.decimal :twoSpentinterview_timeH
      t.decimal :twoSpentinterviewD
      t.decimal :twoSallary_interviewer
      t.decimal :threeSpentinterview_timeH
      t.decimal :threeSpentinterview_timeD
      t.decimal :threeSallary_interviewer
      t.decimal :oneSpentAdmin_timeH
      t.decimal :oneSpentAdmin_timeD
      t.decimal :oneSallary_admin
      t.decimal :twoSpentAdmin_timeH
      t.decimal :twoSpentAdmin_timeD
      t.decimal :twoSallary_admin
      t.decimal :threeSpentAdmin_timeH
      t.decimal :threeSpentAdmin_timeD
      t.decimal :threeSallary_admin
      t.decimal :spentSupervisor_timeH
      t.decimal :spentSupervisor_timeD
      t.decimal :spentEmployee_timeH
      t.decimal :spentEmployee_timeD
      t.decimal :spentadapt_timeH
      t.decimal :spentadapt_timeD
      t.decimal :Sallary_adapt
      t.decimal :spenttrain_timeH
      t.decimal :spenttrain_timeD
      t.decimal :sallary_trainer
      t.decimal :spentprocess_timeH
      t.decimal :spentprocess_timeD
      t.decimal :sallary_adminprocess
      t.decimal :spentRotenlefter_timeH
      t.decimal :spentRotenLefter_timeD
      t.decimal :sallary_adminRotenlefter
      t.decimal :balanceLeavDay_timeH
      t.decimal :balanceLeavDay_timeD
      t.decimal :Remaing_medical
      t.decimal :indemnity

      t.timestamps
    end
  end
end
