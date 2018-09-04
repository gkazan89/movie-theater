class ChangeIntegerLimitForCc < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :credit_card, :integer, limit: 8
  end
end
