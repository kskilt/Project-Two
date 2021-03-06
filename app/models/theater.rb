# frozen_string_literal: true

# no-documentation
class Theater < ApplicationRecord
  has_many :showings
  has_many :movies, through: :showings
  has_many :screens
end
