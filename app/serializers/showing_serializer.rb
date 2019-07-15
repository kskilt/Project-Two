class ShowingSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :theater_id, :day, :time_of_day, :theater_name, :movie_name, :screen_type

  def day
    self.object.time.strftime("%b %d  - %Y")
  end

  def time_of_day
    self.object.time.strftime("%I:%M %p")
  end

  def theater_name
    self.object.theater.name
  end

  def movie_name
    self.object.movie.name
  end

  def screen_type
    self.object.screen.screen_type
  end
end
