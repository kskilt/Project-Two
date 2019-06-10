class AddNameToScreens < ActiveRecord::Migration[5.2]
  def change
    add_column :screens, :name, :string
  end
end
