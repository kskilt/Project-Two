# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies =[{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]
  movies.each do |movie|
    Movie.create(movie)
  end

  theaters =[{name: 'Regal Cinema'}, {name: 'Wells Fargo Theater'}, {name: 'AMC'}, {name: 'Fandango Theater'}]
  theaters.each do |theater|
    Theater.create(theater)
  end

  User.create(name:'kevin', password:'123')
