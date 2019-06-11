# frozen_string_literal: true

# adding screen_id to showings table
class AddScreenIdToShowings < ActiveRecord::Migration[5.2]
  def change
    add_column :showings, :screen_id, :integer
  end
end
