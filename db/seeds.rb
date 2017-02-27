# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(
	name: "Kingsley Ijomah",
	email: "velu@example.com",
	password: "example",
	role: "admin")


30.times do
	post = Post.create(
		title: Faker::Lorem.sentence(20),
		domain_name: Faker::Lorem.sentence(20),
		abstract: Faker::Lorem.paragraph,
		user: user )
end
