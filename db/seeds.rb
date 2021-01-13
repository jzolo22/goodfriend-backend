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

u1 = Api::V1::User.create!(first_name: "Julia", last_name: "Zolotarev")
u2 = Api::V1::User.create!(first_name: "Dimitrios", last_name: "Fragiskatos")

e1 = Api::V1::Event.create(title: "Anniversary", user_id: Api::V1::User.second.id)
e2 = Api::V1::Event.create(title: "julia's event", user_id: Api::V1::User.first.id)
e3 = Api::V1::Event.create(title: "D's event", user_id: Api::V1::User.second.id)


f1 = Api::V1::Follow.create!(follower_id: Api::V1::User.second.id, followee_id: Api::V1::User.first.id)


# Create array of current user's follower's events:
# Api::V1::User.second.followed_users.map {|user| Api::V1::User.find(user.followee_id).events}


# An array of who is following you 
# Api::V1::User.first.following_users.map {|user| Api::V1::User.find(user.follower_id)}

# An array of who you are following
# Api::V1::User.second.followed_users.map {|user| Api::V1::User.find(user.followee_id)}