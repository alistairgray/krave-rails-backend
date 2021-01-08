puts 'Creating new users'
User.destroy_all

u1 = User.create! name: 'bruna', email: 'bruna@ga.co', password_digest: 'chicken', authorisation: 0
u2 = User.create! name: 'sam', email: 'sam@ga.co', password_digest: 'chicken', authorisation: 1
u3 = User.create! name: 'andy', email: 'andy@ga.co', password_digest: 'chicken', authorisation: 1

puts "created #{User.count} users"

puts 'Creating new menus'
Menu.destroy_all

m1 = Menu.create! image: 'http://placekitten.com/200/200', dishname: 'spaghetti', dishdescription: 'its good'
m2 = Menu.create! image: 'http://placekitten.com/200/200', dishname: 'margherita', dishdescription: 'its really good'
m3 = Menu.create! image: 'http://placekitten.com/200/200', dishname: 'beef_pho', dishdescription: 'its incredible, seriously'

puts "created #{Menu.count} menus"

puts 'Creating new restaurants'
Restaurant.destroy_all

r1 = Restaurant.create! name: 'Tiamo', address: '1 lygon st', cuisine: 'italian', menu_id: m1.id, user_id: u1.id
r2 = Restaurant.create! name: 'Gigis', address: '50 king st', cuisine: 'italian', menu_id: m2.id, user_id: u2.id
r3 = Restaurant.create! name: 'Pho Phd', address: '1 merickville st', cuisine: 'vietnamese', menu_id: m3.id, user_id: u3.id

puts "created #{Restaurant.count} restaurants"
