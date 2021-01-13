class RestaurantsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants_users, :id => false do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.timestamps
    end
  end
end
