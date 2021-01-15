class AddVegeterianToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :vegetarian, :boolean
  end
end
