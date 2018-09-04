class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :showtime_id
      t.integer :seat

      t.timestamps
    end
  end
end
