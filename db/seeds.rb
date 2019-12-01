# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  User.create(email: ("a".."z").to_a.sample + "@gmail.com", password: 'password')
end



# 100.times do
# Friendship.create(friended: User.all.sample, user: User.all.sample)
# end

Friendship.create({
  friended: User.find(5),
  user: User.find(6)
})
Friendship.create({
  friended: User.find(5),
  user: User.find(4)
})
Friendship.create({
  friended: User.find(3),
  user: User.find(5)
})
Friendship.create({
  friended: User.find(9),
  user: User.find(5)
})
