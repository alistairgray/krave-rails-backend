class AddVeganToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :vegan, :boolean
  end
end
