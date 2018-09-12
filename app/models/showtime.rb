class Showtime < ApplicationRecord
  has_many :tickets
  belongs_to :movie, optional: true
  belongs_to :theater, optional: true

end
