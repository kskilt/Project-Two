# frozen_string_literal: true

# creating theaters table
class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
