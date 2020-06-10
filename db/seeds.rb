# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"
require "rest-client"

response = RestClient.get "https://api.spacexdata.com/v4/rockets"
repos = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

repos.each do |element|
    Rocket.create(name: element["name"], customer: element["company"], engine: element["engines"]["type"], engine_version: element["engines"]["version"], number_engine: element["engines"]["number"], propergol_1: element["engines"]["propellant_1"], propergol_2: element["engines"]["propellant_2"], landing_legs: element["landing_legs"]["number"], activity: element["active"], stage: element["stages"], booster: element["boosters"], description: element["description"], height: element["height"]["meters"], diameter: element["diameter"]["meters"], mass: element["mass"]["kg"], image: element["flickr_images"][0])
    #puts element["diameter"]["meters"].to_f
end
