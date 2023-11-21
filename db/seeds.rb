# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.create(name: "Action packed")
Category.create(name: "Absurdism")
Category.create(name: "Dramatic endeavors")
Category.create(name: "Cosmic Horror")
Category.create(name: "Romantic escapades")
Category.create(name: "Sci-Fi")

User.create!(email: "admin@gmail.com", password: "adminn", first_name: "Admin", last_name: "Admin", owner: true, client: true)
Dimension.create(title: "Dino Retreat", description: "A Jurassic Park themed vacation home", reviews: 4.5, category_id: 1, user_id: 1)
