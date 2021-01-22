# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Api::V1::User.destroy_all
Api::V1::Follow.destroy_all
Api::V1::Event.destroy_all

u1 = Api::V1::User.create!(username: "juliaz", password: "password123", first_name: "Julia", last_name: "Zolotarev", birthday: Date.new(1991, 9, 22), address: "1340 St Marks Ave, Brooklyn NY 11233", partner_name: "Dimitrios", partner_birthday: Date.new(1983, 9, 7), flowers: true, venmo_handle: "Julia-Zolotarev")
# u2 = Api::V1::User.create!(username: "df", password: "password123",first_name: "Dimitrios", last_name: "Fragiskatos", birthday: Date.new(1983, 9, 7), address: "1340 St Marks Ave, Brooklyn NY 11233", partner_name: "Julia", partner_birthday: Date.new(1991, 9, 22), flowers: false)
# u3 = Api::V1::User.create!(username: "jj", password: "password123",first_name: "John", last_name: "Jennison", birthday: Date.new(1983, 9, 7), address: "some place in Brooklyn", partner_name: "John's partner", partner_birthday: Date.new(1991, 9, 22), flowers: true)
# u4 = Api::V1::User.create!(username: "sh", password: "password123",first_name: "Sabrina", last_name: "Hutchins")
# u5 = Api::V1::User.create!(username: "gy", password: "password123",first_name: "Geoffrey", last_name: "Yang")


# e1 = Api::V1::Event.create!(title: "Store Anniversary", user_id: Api::V1::User.second.id, date: Date.new(2021,3,10))
e2 = Api::V1::Event.create(title: "Bootcamp Graduation!", user_id: Api::V1::User.first.id, date: Date.new(2021, 1, 29))
# e3 = Api::V1::Event.create(title: "D's event", user_id: u2.id, date: Date.new(2021, 1, 20))
# e4 = Api::V1::Event.create(title: "John's event", user_id: u3.id, date: Date.new(2021, 1, 16))
# e5 = Api::V1::Event.create(title: "Sabrina's event", user_id: u4.id, date: Date.new(2021, 2, 8))
# e6 = Api::V1::Event.create(title: "Geoffrey's event", user_id: u5.id, date: Date.new(2021, 1, 18))


# f1 = Api::V1::Follow.create!(follower_id: Api::V1::User.second.id, followee_id: Api::V1::User.first.id)
# f2 = Api::V1::Follow.create!(follower_id: u2.id, followee_id: u3.id)
# f3 = Api::V1::Follow.create!(follower_id: u2.id, followee_id: u4.id)
# f4 = Api::V1::Follow.create!(follower_id: u2.id, followee_id: u5.id)


w1 = Api::V1::Wishlist.create!(user_id: Api::V1::User.first.id)

i1 = Api::V1::Item.create!(wishlist_id: Api::V1::Wishlist.first.id, name: "Fuzzy socks", link: "https://www.target.com/p/women-39-s-penguin-2pk-cozy-crew-socks-black-4-10/-/A-79684642#lnk=sametab")

# Create array of current user's follower's events:
# Api::V1::User.second.followed_users.map {|user| Api::V1::User.find(user.followee_id).events}


# An array of who is following you 
# Api::V1::User.first.following_users.map {|user| Api::V1::User.find(user.follower_id)}

# An array of who you are following
# Api::V1::User.second.followed_users.map {|user| Api::V1::User.find(user.followee_id)}