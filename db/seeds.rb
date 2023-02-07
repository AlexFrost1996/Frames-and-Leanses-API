# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  admin = User.create!(email: 'admin@mail.ru', api_token: ENV.fetch('ADMIN_TOKEN'), admin: true)
  user = User.create!(email: 'user@mail.ru', api_token: ENV['USER_TOKEN'])
  
  { 'USD' => 'dollar USA',
    'GBP' => 'Great Britain pound',
    'EUR' => 'euro', 'JOD' => 'Jordian dinar',
    'JPY' => 'Japanese yen' }.each do |code,name| 
    Currency.create!(currency_code: code, currency_name: name) 
  end
