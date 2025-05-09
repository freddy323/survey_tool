# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
survey1 = Survey.create(question: "Do you like Ruby on Rails?")
survey1.responses.create(answer: true)
survey1.responses.create(answer: true)
survey1.responses.create(answer: false)

survey2 = Survey.create(question: "Is Tailwind CSS easy to use?")
survey2.responses.create(answer: true)
survey2.responses.create(answer: false)
survey2.responses.create(answer: true)
survey2.responses.create(answer: true)
