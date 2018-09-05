class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :credit_card, presence: true, numericality: true, length: {is: 16}
  validates :cvv, presence: true, numericality: true, length: {in: 3..4}
  # there's probably a prettier way to write this validation
  validates :expiration_date, presence: true,
    :if => :expiration_date_cannot_be_past?

  def expiration_date_cannot_be_past?
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "Credit card is expired")
    end
  end

  has_many :tickets
end
