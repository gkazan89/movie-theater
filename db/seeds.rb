# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# had to make slight db migration to accomodate cc number
User.create(first_name: "Tom", last_name: "Cruise", email: "tom@email.com", credit_card: 1234567812345678, cvv: 123, expiration_date: Time.now.to_datetime)
User.create(first_name: "Will", last_name: "Smith", email: "will@email.com", credit_card: 1234567812345677, cvv: 456, expiration_date: Time.now.to_datetime)

Theater.create(capacity: 2)
Theater.create(capacity: 2)

Movie.create(name: "Black Panther", runtime: 150)
Movie.create(name: "Deadpool", runtime: 120)