# frozen_string_literal: true

# no-documentation
class Screen < ApplicationRecord
  has_many :showings
  belongs_to :theater
end
