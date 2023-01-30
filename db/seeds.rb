# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  admin = User.create!(email: 'admin@mail.ru', api_token: '360aa597367f34c0a2cabd67ce4d091a', admin: true)
  user = User.create!(email: 'user@mail.ru', api_token: '756594477cfa58ead9849533f1751844')
  
  ['USD', 'GBP', 'EUR', 'JOD', 'JPY'].each { |currency| Currency.create!(title: currency) }
