class RemoveAuditoriumTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :auditoriums
  end
end
