class CreateUser2s < ActiveRecord::Migration[5.2]
  def change
    create_table :user2s do |t|
      t.string :email

      t.timestamps
    end
  end
end
