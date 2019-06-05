class CreateShowings < ActiveRecord::Migration[5.2]
  def change
    create_table :showings do |t|
      t.string :time
      t.integer :movie_id
      t.integer :theater_id

      t.timestamps
    end
  end
end
