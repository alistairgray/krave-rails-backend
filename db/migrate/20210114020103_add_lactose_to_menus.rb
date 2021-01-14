class AddLactoseToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :lactose, :boolean
  end
end
