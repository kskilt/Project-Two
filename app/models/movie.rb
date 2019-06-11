# frozen_string_literal: true

# no-documentation
class Movie < ApplicationRecord
  has_many :showings
  has_many :theaters, through: :showings
end
