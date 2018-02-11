class Promocode < ApplicationRecord
  # validates
   validates :code, presence: true
   validates :credit, presence: true
   validates :limitations_use, presence: true

#


end
