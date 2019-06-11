class Screen < ApplicationRecord
  has_many :showings
  belongs_to :theater
end
