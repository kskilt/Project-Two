# frozen_string_literal: true

# type was causing issues, switched to screen type
class ChangeTypeNameShowingTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :screens, :type, :screen_type
  end
end
