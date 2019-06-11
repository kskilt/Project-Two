class ChangeTimeToBeTimeDateInShowings < ActiveRecord::Migration[5.2]
  def change
    change_column :showings, :time, :datetime
  end
end
