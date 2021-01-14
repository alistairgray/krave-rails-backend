class AddGlutenFreeToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :gluten_free, :boolean
  end
end
