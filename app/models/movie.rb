class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true
  validates :plot, length: { minimum: 5 }
  validates :year, presence: true

end
