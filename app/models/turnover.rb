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


end
