class Promocode < ApplicationRecord
  # validates
   validates :code, presence: true
   validates :credit, presence: true
   validates :limitations_use, presence: true

#


 has_and_belongs_to_many :users,
end
