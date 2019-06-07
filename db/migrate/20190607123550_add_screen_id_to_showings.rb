class AddScreenIdToShowings < ActiveRecord::Migration[5.2]
  def change
    add_column :showings, :screen_id, :integer
  end
end
