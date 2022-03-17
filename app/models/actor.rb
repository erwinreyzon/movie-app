class Actor < ApplicationRecord
  validates :first_name, length: { greater_than: 2 }
  validates :last_name, length: { greather_than: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }

end