class RemoveUserIdFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :user_id, :integer
  end
end
