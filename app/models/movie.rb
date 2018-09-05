class Movie < ApplicationRecord
  
  validates :name, uniqueness: true
  validates :runtime, numericality: true
  has_many :showtimes
end
