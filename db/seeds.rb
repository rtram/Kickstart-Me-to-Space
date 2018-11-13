# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Planets
mars = Planet.create(name: "Mars", planet_code: "The Red Planet", launch_year: 2030, distance: 33900000, description: "Mars One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Mars. Funding and implementing this plan will not be easy, it will be hard. The Mars One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Mars One is a global initiative whose goal is to make this everyone’s mission to Mars, including yours. If we all work together, we can do this. We’re going to Mars. Come along!", funding_goal: 1850000000)

jupiter = Planet.create(name: "Jupiter", planet_code: "The Moon Planet", launch_year: 2040, distance: 365000000, description: "Jupiter One aims to establish a permanent human settlement on Jupiter. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Jupiter. Funding and implementing this plan will not be easy, it will be hard. The Jupiter One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Jupiter One is a global initiative whose goal is to make this everyone’s mission to Jupiters, including yours. If we all work together, we can do this. We’re going to Jupiter. Come along!", funding_goal: 4050000000)

uranus = Planet.create(name: "Uranus", planet_code: "The Big One", launch_year: 2120, distance: 1700000000, description: "Uranus One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Uranus. Funding and implementing this plan will not be easy, it will be hard. The Uranus One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Uranus One is a global initiative whose goal is to make this everyone’s mission to Uranus, including yours. If we all work together, we can do this. We’re going to Uranus. Come along!", funding_goal: 1850000000)

venus = Planet.create(name: "Venus", planet_code: "The Love Planet", launch_year: 2070, distance: 162000000, description: "Do you want to find a place you with an abundance of healthy young single adults? Come to Venus and fulfill your desire", funding_goal: 2850000000)

mike = Colonist.create(first_name:"Michael", last_name:"Kim", codename:"Would You Rather?", age: 27, profession:"Unemployed Wild Child", gender:"Male")

ana = Colonist.create(first_name:"Ana", last_name:"Harris", codename:"BanAna", age: 28, profession:"Whiteboard Professional", gender:"Female")

anna = Colonist.create(first_name:"Anna", last_name:"Conaway", codename:"Anna MontAnna", age: 28, profession:"Life Sommelierre", gender:"Female")

jason = Colonist.create(first_name:"Jason", last_name:"Campbell", codename:"Jason Space Station", age:32, profession:"Floater", gender:"Male")

paul = Sponsor.create(first_name:"Paul", last_name:"Nicholsen", net_worth: 3150000, goal:"Intergalactic Domination of Steven Universe.")

lane = Sponsor.create(first_name:"Lane", last_name:"Miller", net_worth: 1250000, goal:"Discovery and Domestication of Space Dogs.")

will = Sponsor.create(first_name:"William", last_name:"Ley", net_worth: 2000000, goal:"Where theres a Will theres a way.")

hillary = Sponsor.create(first_name:"Hillary", last_name:"Scofield", net_worth: 2000150000, goal:"To be the best Hillary living on the planet.")

Trip.create(colonist_id: mike.id, planet_id: uranus.id)
Trip.create(colonist_id: ana.id, planet_id: jupiter.id)
Trip.create(colonist_id: anna.id, planet_id: venus.id)
Trip.create(colonist_id: jason.id, planet_id: mars.id)

Donation.create(sponsor_id: paul.id, planet_id: uranus.id, amount: 1000000)
Donation.create(sponsor_id: will.id, planet_id: jupiter.id, amount: 250000)
Donation.create(sponsor_id: lane.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: hillary.id, planet_id: mars.id, amount: 43500000)

hillary = User.create(username: "Hillary")
paul = User.create(username: "Paul")
mike = User.create(username: "Mike")
jenny = User.create(username: "Jenny")
