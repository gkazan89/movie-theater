class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :showtime, optional: true
end
