class Theater < ApplicationRecord
  validates :capacity, presence: true, numericality: true
  has_many :showtimes
end
