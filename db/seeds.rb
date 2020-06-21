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
rockets = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

rockets.each do |element|
    Rocket.create(name: element["name"], customer: element["company"], engine: element["engines"]["type"], engine_version: element["engines"]["version"], number_engine: element["engines"]["number"], propergol_1: element["engines"]["propellant_1"], propergol_2: element["engines"]["propellant_2"], landing_legs: element["landing_legs"]["number"], activity: element["active"], stage: element["stages"], booster: element["boosters"], description: element["description"], height: element["height"]["meters"], diameter: element["diameter"]["meters"], mass: element["mass"]["kg"], image: element["flickr_images"][0], rocket_id_long: element["id"])
    #puts element["diameter"]["meters"].to_f
end

response = RestClient.get "https://api.spacexdata.com/v4/launchpads"
launchpad = JSON.parse(response)

launchpad.each do |element|
    Launchpad.create(full_name: element["full_name"], status: element["status"], locality: element["locality"], region: element["region"], latitude: element["latitude"], longitude: element["longitude"], launch_attempts: element["launch_attempts"], launchpad_id_long: element["id"])
end

response = RestClient.get "https://api.spacexdata.com/v4/launches"
launches = JSON.parse(response)

launches.each do |element|
    rocket = Rocket.find_by(rocket_id_long: element["rocket"])
    lauchpad = Launchpad.find_by(launchpad_id_long: element["launchpad"])
    images = []
    element["links"]["flickr"]["original"].each do |element|
        images << element
    end
    Launche.create(name: element["name"], details: element["details"], static_fire_utc: element["static_fire_date_utc"], launch_date_utc: element["date_utc"], launch_illustration: element["links"]["patch"]["small"], launch_1: images, success: element["success"], youtube_id: element["links"]["youtube_id"], rocket_id: rocket.id, launchpad_id: lauchpad.id)
end

