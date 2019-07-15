# frozen_string_literal: true

# no-documentation
class Showing < ApplicationRecord
  validates :time, presence: true
  validates :theater_id, presence: true
  validates :movie_id, presence: true
  validates :screen, presence: true
  belongs_to :movie
  belongs_to :theater
  belongs_to :screen

  def self.search(search)
    if search
      movie = Movie.find_by(name: search)
      if movie
        where(movie_id: movie)
      else
        Showing.all
      end
    else
      Showing.all
    end
  end
end
