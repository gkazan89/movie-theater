class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :credit_card
      t.integer :cvv
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
