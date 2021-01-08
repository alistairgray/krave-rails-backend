class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.text :image
      t.text :menu_item
      t.text :item_description

      t.timestamps
    end
  end
end
