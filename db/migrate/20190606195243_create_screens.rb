# frozen_string_literal: true

# create screens table
class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.integer :theater_id
      t.string :type

      t.timestamps
    end
  end
end
