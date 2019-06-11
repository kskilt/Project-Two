# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  Movie.destroy_all
  Theater.destroy_all
  Screen.destroy_all
  Showing.destroy_all


  movies =[{ name: 'Star Wars', description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader."},
  { name: 'Lord of the Rings', description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."}]
  movies.each do |movie|
    Movie.create(movie)
  end

  theaters =[{name: 'Regal Cinema', location: "Brandywine Town Center"
  {name: 'Wells Fargo Theater', location:'3601 S Broad St'},
  {name: 'AMC', location: 'Granite Run Mall 8'},
  {name: 'Fandango Theater', location: 'Broad and Patterson'}]
  theaters.each do |theater|
    Theater.create(theater)
  end

  regal_screens = [
    {screen_type: 'standard', theater_id: 1, name: 'standard_1'},
    {screen_type: 'standard', theater_id: 1, name: 'standard_2'},
    {screen_type: 'standard', theater_id: 1, name: 'standard_3'},
    {screen_type: 'standard', theater_id: 1, name: 'standard_4'},
    {screen_type: 'standard', theater_id: 1, name: 'standard_5'},
    {screen_type: 'Imax', theater_id: 1, name: 'IMAX_1'}]
  regal_screens.each { |screen| Screen.create(screen) }

  wf_screens =[
    {screen_type: 'standard', theater_id: 2, name: 'standard_1'},
    {screen_type: 'standard', theater_id: 2, name: 'standard_2'},
    {screen_type: 'standard', theater_id: 2, name: 'standard_3'},
    {screen_type: 'standard', theater_id: 2, name: 'standard_4'},
    {screen_type: 'standard', theater_id: 2, name: 'standard_5'},
    {screen_type: 'Imax', theater_id: 2, name: 'IMAX_1'}]
  wf_screens.each { |screen| Screen.create(screen) }

  amc_screens = [
    {screen_type: 'standard', theater_id: 3, name: 'standard_1'},
    {screen_type: 'standard', theater_id: 3, name: 'standard_2'},
    {screen_type: 'standard', theater_id: 3, name: 'standard_3'},
    {screen_type: 'standard', theater_id: 3, name: 'standard_4'},
    {screen_type: 'Imax', theater_id: 3, name: 'IMAX_1'}]
  amc_screens.each { |screen| Screen.create(screen) }

  fandango_screens = [
    {screen_type: 'standard', theater_id: 4, name: 'standard_1'},
    {screen_type: 'standard', theater_id: 4, name: 'standard_2'},
    {screen_type: 'standard', theater_id: 4, name: 'standard_3'},
    {screen_type: 'standard', theater_id: 4, name: 'standard_4'},
    {screen_type: 'standard', theater_id: 4, name: 'standard_5'},
    {screen_type: 'standard', theater_id: 4, name: 'standard_6'}]
  fandango_screens.each { |screen| Screen.create(screen) }

