class Promocode < ApplicationRecord
  # validates
   validates :code, presence: true
   validates :credit, presence: true
   validates :limitations_use, presence: true

#


has_many :promo_codes_users
has_many :users, through: :promo_codes_users

end
