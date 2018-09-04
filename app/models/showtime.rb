class Showtime < ApplicationRecord
  has_many :tickets
  belongs_to :movie
  belongs_to :auditorium
end
