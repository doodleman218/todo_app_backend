# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Quest.destroy_all

Location.create(name: "Hyrule Castle")
Location.create(name: "Zoras Domain")
Location.create(name: "Gerudo Desert")

Quest.create(content: "Get around to saving Zelda", location_id: Location.find_by(name: "Hyrule Castle").id )
Quest.create(content: "Hang out with Sidon", location_id: Location.find_by(name: "Zoras Domain").id )
Quest.create(content: "Cross dress", location_id: Location.find_by(name: "Gerudo Desert").id )
