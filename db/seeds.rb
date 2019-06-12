# frozen_string_literal: true

#
# Examples:
#
Movie.destroy_all
Theater.destroy_all
Screen.destroy_all
Showing.destroy_all

movies = [
  {
    name: "Star Wars",
    description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a " \
                 "Wookiee and two droids to save the galaxy from the Empire's " \
                 "world-destroying battle station, while also attempting to rescue " \
                 "Princess Leia from the mysterious Darth Vader.",
  },
  { name: "Lord of the Rings",
    description:
  "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron." },
]
movies.each do |movie|
  Movie.create(movie)
end

regal_cinema = Theater.create(
  name: "Regal Cinema",
  location: "Brandywine Town Center"
)

regal_screens = [
  { screen_type: "Standard", theater: regal_cinema, name: "standard_1" },
  { screen_type: "Standard", theater: regal_cinema, name: "standard_2" },
  { screen_type: "Standard", theater: regal_cinema, name: "standard_3" },
  { screen_type: "Standard", theater: regal_cinema, name: "standard_4" },
  { screen_type: "Standard", theater: regal_cinema, name: "standard_5" },
  { screen_type: "Imax", theater: regal_cinema, name: "IMAX_1" },
]
regal_screens.each { |screen| Screen.create(screen) }

wellsfargo = Theater.create(
  name: "Wells Fargo Theater",
  location: "3601 S Broad St"
)

wf_screens = [
  { screen_type: "Standard", theater: wellsfargo, name: "standard_1" },
  { screen_type: "Standard", theater: wellsfargo, name: "standard_2" },
  { screen_type: "Standard", theater: wellsfargo, name: "standard_3" },
  { screen_type: "Standard", theater: wellsfargo, name: "standard_4" },
  { screen_type: "Standard", theater: wellsfargo, name: "standard_5" },
  { screen_type: "Imax", theater: wellsfargo, name: "IMAX_1" },
]
wf_screens.each { |screen| Screen.create(screen) }

amc = Theater.create(name: "AMC", location: "Granite Run Mall 8")

amc_screens = [
  { screen_type: "Standard", theater: amc, name: "standard_1" },
  { screen_type: "Standard", theater: amc, name: "standard_2" },
  { screen_type: "Standard", theater: amc, name: "standard_3" },
  { screen_type: "Standard", theater: amc, name: "standard_4" },
  { screen_type: "Imax", theater: amc, name: "IMAX_1" },
]
amc_screens.each { |screen| Screen.create(screen) }

fandango = Theater.create(
  name: "Fandango Theater",
  location: "Broad and Patterson"
)

fandango_screens = [
  { screen_type: "Standard", theater: fandango, name: "standard_1" },
  { screen_type: "Standard", theater: fandango, name: "standard_2" },
  { screen_type: "Standard", theater: fandango, name: "standard_3" },
  { screen_type: "Standard", theater: fandango, name: "standard_4" },
  { screen_type: "Standard", theater: fandango, name: "standard_5" },
  { screen_type: "Standard", theater: fandango, name: "standard_6" },
]
fandango_screens.each { |screen| Screen.create(screen) }
