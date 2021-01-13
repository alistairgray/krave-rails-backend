puts 'Creating new users'
User.destroy_all

u1 = User.create! name: 'bruna', email: 'bruna@ga.co', password: 'chicken', authorisation: 0
u2 = User.create! name: 'sam', email: 'sam@ga.co', password: 'chicken', authorisation: 1
u3 = User.create! name: 'andy', email: 'andy@ga.co', password: 'chicken', authorisation: 1

puts "created #{User.count} users"

puts 'Creating new restaurants'
Restaurant.destroy_all

r1 = Restaurant.create! name: 'Tiamo', address: '1 lygon st', cuisine: 'italian', user_id: u1.id
r2 = Restaurant.create! name: 'Gigis', address: '50 king st', cuisine: 'italian', user_id: u2.id
r3 = Restaurant.create! name: 'Pho Phd', address: '1 merickville st', cuisine: 'vietnamese', user_id: u3.id
r4 = Restaurant.create! name: 'Soul Burger', address: '229A King St, Newtown, NSW, 2042', cuisine: 'American', user_id: u2.id

puts "created #{Restaurant.count} restaurants"

puts 'Creating new menus'
Menu.destroy_all

m1 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'spaghetti', item_description: 'its good', restaurant_id: r1.id
m2 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'margherita', item_description: 'its really good', restaurant_id: r2.id
m3 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'beef_pho', item_description: 'its incredible, seriously', restaurant_id: r3.id
m4 = Menu.create! image: 'http://placekitten.com/100/100', menu_item: 'pasta', item_description: 'amazing!', restaurant_id: r1.id
m5 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'aranchinni', item_description: 'so good!', restaurant_id: r1.id


puts "created #{Menu.count} menus"
