# frozen_string_literal: true

# creating movies table
class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
