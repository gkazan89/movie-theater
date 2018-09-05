class Movie < ApplicationRecord
  
  validates :name, uniqueness: true

  has_many :showtimes
end
