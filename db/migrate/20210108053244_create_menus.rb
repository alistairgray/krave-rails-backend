class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.text :image
      t.text :dishname
      t.text :dishdescription

      t.timestamps
    end
  end
end
