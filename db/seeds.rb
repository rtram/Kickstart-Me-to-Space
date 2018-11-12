# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Planets
mars = Planet.create(name: "Mars", planet_code: "The Red Planet", launch_year: "2030", distance: 33,900,000, text: "Mars One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Mars. Funding and implementing this plan will not be easy, it will be hard. The Mars One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Mars One is a global initiative whose goal is to make this everyone’s mission to Mars, including yours. If we all work together, we can do this. We’re going to Mars. Come along!", funding_goal: 1,850,000,000)

jupiter = Planet.create(name: "Jupiter", planet_code: "The Moon Planet", launch_year: "2040", distance: 365,000,000, text: "Jupiter One aims to establish a permanent human settlement on Jupiter. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Jupiter. Funding and implementing this plan will not be easy, it will be hard. The Jupiter One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Jupiter One is a global initiative whose goal is to make this everyone’s mission to Jupiters, including yours. If we all work together, we can do this. We’re going to Jupiter. Come along!", funding_goal: 4,050,000,000)

name: "Uranus", planet_code: "The Big One", launch_year: "2120", distance: 1,700,000,000, text: "Uranus One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Uranus. Funding and implementing this plan will not be easy, it will be hard. The Uranus One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Uranus One is a global initiative whose goal is to make this everyone’s mission to Uranus, including yours. If we all work together, we can do this. We’re going to Uranus. Come along!", funding_goal: 1,850,000,000)

t.string "name"
t.string "planet_code"
t.integer "launch_year"
t.float "distance"
t.text "description"
