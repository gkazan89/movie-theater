class CreateAuditoria < ActiveRecord::Migration[5.2]
  def change
    create_table :auditoriums do |t|
      t.integer :capacity

      t.timestamps
    end
  end
end
