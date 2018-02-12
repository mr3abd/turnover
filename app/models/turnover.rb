class Turnover < ApplicationRecord
  belongs_to :user

# validates form
  validates :name_company, presence: true
  validates :position, presence: true
  validates :sallary_left, presence: true
  validates :sallart_newer, presence: true
  validates :years_lefter, presence: true
  validates :sallary_manger, presence: true
  validates :daily_hourly, presence: true
  validates :agancey_cost, presence: true
  validates :ads_cost, presence: true
  validates :sallary_HR, presence: true
  validates :spentHR_timeD, presence: true
  validates :spentHR_timeH, presence: true
  validates :oneSallary_interviewer, presence: true
  validates :onespentinterview_timeD, presence: true
  validates :onespentinterview_timeH, presence: true
  validates :twoSallary_interviewer, presence: true
  validates :twoSpentinterviewD, presence: true
  validates :twoSpentinterview_timeH, presence: true
  validates :threeSallary_interviewer, presence: true
  validates :threeSpentinterview_timeD, presence: true
  validates :threeSpentinterview_timeH, presence: true
  validates :oneSallary_admin, presence: true
  validates :oneSpentAdmin_timeD, presence: true
  validates :oneSpentAdmin_timeH, presence: true
  validates :twoSallary_admin, presence: true
  validates :twoSpentAdmin_timeD, presence: true
  validates :twoSpentAdmin_timeH, presence: true
  validates :threeSallary_admin, presence: true
  validates :threeSpentAdmin_timeD, presence: true
  validates :threeSpentAdmin_timeH, presence: true
  validates :spentSupervisor_timeD, presence: true
  validates :spentSupervisor_timeH, presence: true
  validates :spentEmployee_timeD, presence: true
  validates :spentEmployee_timeH, presence: true
  validates :Sallary_adapt, presence: true
  validates :spentadapt_timeD, presence: true
  validates :spentadapt_timeH, presence: true
  validates :sallary_trainer, presence: true
  validates :spenttrain_timeD, presence: true
  validates :spenttrain_timeH, presence: true
  validates :sallary_adminprocess, presence: true
  validates :spentprocess_timeD, presence: true
  validates :spentprocess_timeH, presence: true
  validates :sallary_adminRotenlefter, presence: true
  validates :spentRotenLefter_timeD, presence: true
  validates :spentRotenlefter_timeH, presence: true
  validates :indemnity, presence: true
  validates :balanceLeavDay_timeD, presence: true
  validates :balanceLeavDay_timeH, presence: true
  validates :Remaing_medical, presence: true


end
