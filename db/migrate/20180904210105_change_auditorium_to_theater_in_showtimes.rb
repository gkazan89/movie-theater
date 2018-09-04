class ChangeAuditoriumToTheaterInShowtimes < ActiveRecord::Migration[5.2]
  def change
    rename_column :showtimes, :auditorium_id, :theater_id
  end
end
