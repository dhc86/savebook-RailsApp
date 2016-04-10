# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# First User
User.create(first_name: 'Nicki', last_name: 'Minaj', email: 'nicki@google.com', password: 'password', picture_url: 'http://i.imgur.com/cs4CE4S.jpg', address:'568 Beatty St, Vancouver, BC V6B 2L3')

# Second User
User.create(first_name: 'Nick', last_name: 'Jonas', email: 'jonas@google.com', password: 'password', picture_url: 'http://i.imgur.com/OAnfgJU.jpg', address: '1095 Hamilton St, Vancouver, BC V6B 5T4')

# Third User
User.create(first_name: 'Albert', last_name: 'Einstein', email: 'einstein@google.com', password: 'password', picture_url: 'http://i.imgur.com/t3XvDKM.jpg', address: '780 Richards St, Vancouver, BC V6B 3A4')

# Fourth User
User.create(first_name: 'Barack', last_name: 'Obama', email: 'obama@google.com', password: 'password', picture_url: 'http://i.imgur.com/zHOf0m4.jpg', address: '200 Granville St, Vancouver, BC V6C 1S4')

# Fifth User
User.create(first_name: 'Johnny', last_name: 'Depp', email: 'johnnydepp@google.com', password: 'password', picture_url: 'http://i.imgur.com/cn3Un8c.jpg', address: '45 Blood Alley Square, Vancouver, BC V6B 1C7')

# Sixth User
User.create(first_name: 'Justin', last_name: 'Beiber', email: 'justin@google.com', password: 'password', picture_url: 'http://i.imgur.com/m83NUbx.jpg', address: '217 Carrall St, Vancouver, BC V6B 2J2')

# Seventh User
User.create(first_name: 'Steve', last_name: 'Jobs', email: 'stevejobs@google.com', password: 'password', picture_url: 'http://i.imgur.com/ZS4sZZl.jpg', address: '777 Thurlow St, Vancouver, BC V6E 3V5')

# Eighth User
User.create(first_name: 'Stephen', last_name: 'Hawking', email: 'hawking@google.com', password: 'password', picture_url: 'http://i.imgur.com/Os95cm5.jpg', address: '1177 Marinaside Crescent, Vancouver, BC V6Z 2Y3')

# Ninth User
User.create(first_name: 'David', last_name: 'Hasselhoff', email: 'david@google.com', password: 'password', picture_url: 'http://i.imgur.com/E7WC6Uq.jpg', address: '555 W Hastings St, Vancouver, BC V6B 4N6')

# Tenth User
User.create(first_name: 'Snoop', last_name: 'Dogg', email: 'snoopy@google.com', password: 'password', picture_url: 'http://i.imgur.com/5T3W7Wz.jpg', address: '2881 Granville St, Vancouver, BC V6H 3J4') 
