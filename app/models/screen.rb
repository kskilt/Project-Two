# frozen_string_literal: true

# no-documentation
class Screen < ApplicationRecord
  has_many :showings
  belongs_to :theater

  scope :imax, -> { where(screen_type: "Imax") }
end
