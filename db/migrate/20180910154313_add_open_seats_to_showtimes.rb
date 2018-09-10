class AddOpenSeatsToShowtimes < ActiveRecord::Migration[5.2]
  def change
    add_column :showtimes, :openSeats, :integer
  end
end
