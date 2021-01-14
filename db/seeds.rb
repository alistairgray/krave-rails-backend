puts 'Creating new users'
User.destroy_all

u1 = User.create! name: 'Bruna', email: 'bruna@ga.co', password: 'chicken', authorisation: 0
u2 = User.create! name: 'Sam', email: 'sam@ga.co', password: 'chicken', authorisation: 1
u3 = User.create! name: 'Andy', email: 'andy@ga.co', password: 'chicken', authorisation: 1

puts "Created #{User.count} users"

puts 'Creating new restaurants'
Restaurant.destroy_all

r1 = Restaurant.create! name: 'Tiamo', address: '303 Lygon St, Carlton VIC 3053', cuisine: 'Italian', user_id: u1.id
r2 = Restaurant.create! name: 'Gigis', address: '379 King St, Newtown NSW 2042', cuisine: 'Italian', user_id: u2.id
r3 = Restaurant.create! name: 'Pho Phd', address: '260 Marrickville Rd, Marrickville NSW 2204', cuisine: 'Vietnamese', user_id: u3.id
r4 = Restaurant.create! name: 'Soul Burger', address: '229A King St, Newtown, NSW, 2042', cuisine: 'American', user_id: u2.id
r5 = Restaurant.create! name: 'Bodhi', address: '2-4 College Street, Sydney, NSW, 2000', cuisine: 'Vegan', user_id: u2.id

u1.restaurants << r1
u2.restaurants << r2 << r4
u3.restaurants << r3

puts "Created #{Restaurant.count} restaurants"

puts 'Creating new menus'
Menu.destroy_all

m1 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'Bologna', item_description: 'Mince meat cooked in Napoli base sauce', restaurant_id: r1.id
m2 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'Marinara Tradizionale', item_description: 'San Marzano tomato, garlic, fresh oregano, extra virgin olive oil', restaurant_id: r2.id
m3 = Menu.create! image: 'http://placekitten.com/200/200', menu_item: 'Beef Pho', item_description: 'Our classic Pho Tai dish served with tender, thinly sliced premium beef in beef broth. Complimented with fresh herbs, bean sprouts, basil and lemon', restaurant_id: r3.id
m4 = Menu.create! image: 'http://placekitten.com/100/100', menu_item: 'Carbonara', item_description: 'Pasta tossed with eggs, bacon cracked pepper and parmesan', restaurant_id: r1.id
m5 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Schiacciata', item_description: 'Olive oil, sea salt and rosemary', restaurant_id: r1.id
m6 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Chilli Beef', item_description: 'Baby Cos Lettuce, Tomato, Onion, Plant-based Beef, Jalapenos, Peri Peri Sauce and Herbed Mayo', restaurant_id: r4.id
m7 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Regina', item_description: 'San Marzano tomato, tree nuts ricotta, sliced cherry tomatoes, fresh basil, parmesan, mozzarisella, extra virgin olive oil', restaurant_id: r2.id
m8 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Carciofi e Funghi', item_description: 'Pizza with garlic and oil topped with fresh chopped mixed tomatoes, fresh basil, roasted black olives, mozzarisella, extra virgin olive oil', restaurant_id: r2.id
m9 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Melanzane', item_description: 'San Marzano tomato, tree nuts ricotta, grilled eggplant, basil salsa, extra virgin olive oil', restaurant_id: r2.id
m10 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Crispy Silken Tofu', item_description: 'spicy pesto | pickled mango | tomato salsa | kataifi nest', restaurant_id: r5.id
m11 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Finger Eggplant', item_description: 'chili | sesame seed | sweet black rice vinegar | coriander |
peanut | caramel sauce', restaurant_id: r5.id
m12 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Vegan Smoked Duck', item_description: 'lettuce | pickled ginger | pickled cucumber | spiced
plum sauce', restaurant_id: r5.id
m13 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Thai-style Soy Larb', item_description: 'lettuce cups | kaffir lime leaf | spiced peanut | bean sprouts', restaurant_id: r5.id
m14 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Sydney Sider', item_description: 'Baby Cos Lettuce, Tomato, Plant-based Beef, Plant-based Cheese, Plant-based Egg, Plant-based Bacon, Crispy Onion Ring, SB Sauce and Tomato Relish', restaurant_id: r4.id
m15 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'BBQ Pulled Pork', item_description: 'Crispy Veggie Slaw, Smokey BBQ Marinated, Plant-based Pulled Pork, Peri Peri Sauce and Aioli', restaurant_id: r4.id
m16 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Portobello Mushroom', item_description: 'Rocket Lettuce, Plant-based Fetta, Garlic & Thyme, Marinated Portobello Mushroom, Roasted Pepper, Basil Pesto and Herbed Mayo', restaurant_id: r4.id
m17 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Chilli Dog', item_description: 'Plant-based Beef Sausage, Grilled Onions, Diced Tomatoes, Jalapenos, Peri Peri Sauce and Westmont Chilli Juice', restaurant_id: r4.id
m18 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Patate', item_description: 'Thin sliced roasted potatoes, roasted kipfler potatoes, garlic, rosemary, black truffle pate, extra virgin olive oil', restaurant_id: r2.id
m19 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Peperone Rosso', item_description: 'San Marzano tomato, red capsicum, capers, chilli, olive tapenade, oregano, extra virgin olive oil', restaurant_id: r2.id
m20 = Menu.create! image: 'http://placekitten.com/250/250', menu_item: 'Calzone con Cavolo', item_description: 'Cauliflower puree, red capsicum, olives, artichokes, topped with parsley salsa, extra virgin olive oil', restaurant_id: r2.id



puts "Created #{Menu.count} menus"
