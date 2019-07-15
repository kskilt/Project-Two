# frozen_string_literal: true

class ShowingSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :theater_id,
             :day, :time_of_day, :theater_name, :movie_name,
             :screen_type

  def day
    object.time.strftime("%b %d  - %Y")
  end

  def time_of_day
    object.time.strftime("%I:%M %p")
  end

  def theater_name
    object.theater.name
  end

  def movie_name
    object.movie.name
  end

  def screen_type
    object.screen.screen_type
  end
end
