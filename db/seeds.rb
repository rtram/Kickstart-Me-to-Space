
mars = Planet.create(name: "Mars", planet_code: "Break The Ice", launch_year: 2030, distance: 33900000, description: "Mars One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Mars. Funding and implementing this plan will not be easy, it will be hard. The Mars One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Mars One is a global initiative whose goal is to make this everyone’s mission to Mars, including yours. If we all work together, we can do this. We’re going to Mars. Come along!", funding_goal: 1850000000)

jupiter = Planet.create(name: "Jupiter", planet_code: "Moon Mission", launch_year: 2040, distance: 365000000, description: "Jupiter One aims to establish a permanent human settlement on Jupiter. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Jupiter. Funding and implementing this plan will not be easy, it will be hard. The Jupiter One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Jupiter One is a global initiative whose goal is to make this everyone’s mission to Jupiters, including yours. If we all work together, we can do this. We’re going to Jupiter. Come along!", funding_goal: 4050000000)

uranus = Planet.create(name: "Uranus", planet_code: "The Big One", launch_year: 2120, distance: 1700000000, description: "Uranus One aims to establish a permanent human settlement on Mars. Several unmanned missions will be completed, establishing a habitable settlement before carefully selected and trained crews will depart to Uranus. Funding and implementing this plan will not be easy, it will be hard. The Uranus One team, with its advisers and with established aerospace companies, will evaluate and mitigate risks and identify and overcome difficulties step by step. Uranus One is a global initiative whose goal is to make this everyone’s mission to Uranus, including yours. If we all work together, we can do this. We’re going to Uranus. Come along!", funding_goal: 1850000000)

venus = Planet.create(name: "Venus", planet_code: "Find Love", launch_year: 2070, distance: 162000000, description: "Do you want to find a place you with an abundance of healthy young single adults? Come to Venus and fulfill your desire", funding_goal: 2850000000)

mike = Colonist.create(username: "mikekim", first_name:"Michael", last_name:"Kim", codename:"Sweet Baby", age: 27, profession:"Unemployed Wild Child", gender:"Male", password:"mike", status:"active")

ana = Colonist.create(username:"anaharris",first_name:"Ana", last_name:"Harris", codename:"BanAna", age: 28, profession:"Whiteboard Professional", gender:"Female", password:"ana", status:"active")

anna = Colonist.create(username:"annaconaway", first_name:"Anna", last_name:"Conaway", codename:"Anna MontAnna", age: 28, profession:"Life Sommelierre", gender:"Female", password:"anna", status:"active")

jason = Colonist.create(username:"jasoncampbell", first_name:"Jason", last_name:"Campbell", codename:"Jason Space Station", age:32, profession:"Floater", gender:"Male", password:"jason", status:"active")

paul = Sponsor.create(username:"paulnicholsen", first_name:"Paul", last_name:"Nicholsen", net_worth: 3150000, goal:"Intergalactic Domination of Steven Universe.", password:"paul")

lane = Sponsor.create(username:"lanemiller", first_name:"Lane", last_name:"Miller", net_worth: 1250000, goal:"Discovery and Domestication of Space Dogs.", password:"lane")

will = Sponsor.create(username:"willley", first_name:"William", last_name:"Ley", net_worth: 2000000, goal:"Where theres a Will theres a way.", password:"will")

hillary = Sponsor.create(username:"hillaryscofield", first_name:"Hillary", last_name:"Scofield", net_worth: 2000150000, goal:"To be the best Hillary living on the planet.", password:"hillary")

elon = Sponsor.create(username:"elonmusk", first_name:"Elon", last_name:"Musk", net_worth: 10000150000, goal:"To send a dealership to space", password:"elon")

bill = Sponsor.create(username:"billgates", first_name:"Bill", last_name:"Gates", net_worth: 50000150000, goal:"To get away from it all", password:"bill")

neil = Sponsor.create(username:"neildegrassetyson", first_name:"Neil", last_name:"Tyson", net_worth: 750000, goal:"Space", password:"neil")

morgan = Sponsor.create(username:"morganfreeman", first_name:"Morgan", last_name:"Freeman", net_worth: 1250000, goal:"To become the voice of the Universe", password:"morgan")

nick = Sponsor.create(username:"nickrivera", first_name:"Nick", last_name:"Rivera", net_worth: 15000000, goal:"Ping Pong Master", password:"nick")

andrew = Sponsor.create(username:"andrewrivera", first_name:"Andrew", last_name:"Rivera", net_worth: 18600000, goal:"Headline the first Warp Tour in a Wormhole", password:"andrew")

iman = Sponsor.create(username:"imanjawad", first_name:"Iman", last_name:"Jawad", net_worth: 1235000000, goal:"Space Racing", password:"iman")

beth = Sponsor.create(username:"bethwilson", first_name:"Beth", last_name:"Wilson", net_worth: 1500320000, goal:"Become an alien dog walker", password:"beth")

jenni = Sponsor.create(username:"jenniingram", first_name:"Jennifer", last_name:"Ingram", net_worth: 15012300000, goal:"Take JuJu to Space", password:"jenni")

joseph = Sponsor.create(username:"josepharias", first_name:"Joe", last_name:"Arias", net_worth: 187000000, goal:"Have a shorter commute", password:"joseph")

robin = Sponsor.create(username:"robintram", first_name:"Robin", last_name:"Tram", net_worth: 5000, goal:"Become a Caped Vigilante", password:"robin")

Trip.create(colonist_id: mike.id, planet_id: uranus.id)
Trip.create(colonist_id: ana.id, planet_id: jupiter.id)
Trip.create(colonist_id: anna.id, planet_id: venus.id)
Trip.create(colonist_id: jason.id, planet_id: mars.id)

Donation.create(sponsor_id: paul.id, planet_id: uranus.id, amount: 1000000)
Donation.create(sponsor_id: will.id, planet_id: jupiter.id, amount: 250000)
Donation.create(sponsor_id: lane.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: hillary.id, planet_id: mars.id, amount: 43500000)
Donation.create(sponsor_id: elon.id, planet_id: uranus.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: venus.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: paul.id, planet_id: uranus.id, amount: 1000000)
Donation.create(sponsor_id: will.id, planet_id: jupiter.id, amount: 250000)
Donation.create(sponsor_id: lane.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: hillary.id, planet_id: mars.id, amount: 43500000)
Donation.create(sponsor_id: elon.id, planet_id: uranus.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: venus.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: nick.id, planet_id: uranus.id, amount: 1005000)
Donation.create(sponsor_id: andrew.id, planet_id: jupiter.id, amount: 26050)
Donation.create(sponsor_id: iman.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: beth.id, planet_id: mars.id, amount: 43500000)
Donation.create(sponsor_id: jenni.id, planet_id: uranus.id, amount: 12300000)
Donation.create(sponsor_id: joseph.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: robin.id, planet_id: venus.id, amount: 12051230)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 8670020)
Donation.create(sponsor_id: elon.id, planet_id: jupiter.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: mars.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: paul.id, planet_id: uranus.id, amount: 1000000)
Donation.create(sponsor_id: will.id, planet_id: jupiter.id, amount: 250000)
Donation.create(sponsor_id: lane.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: hillary.id, planet_id: mars.id, amount: 43500000)
Donation.create(sponsor_id: elon.id, planet_id: venus.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: venus.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: nick.id, planet_id: mars.id, amount: 1005000)
Donation.create(sponsor_id: andrew.id, planet_id: jupiter.id, amount: 26050)
Donation.create(sponsor_id: joseph.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: robin.id, planet_id: venus.id, amount: 12051230)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 8670020)
Donation.create(sponsor_id: elon.id, planet_id: jupiter.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: mars.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: paul.id, planet_id: uranus.id, amount: 1000000)
Donation.create(sponsor_id: will.id, planet_id: jupiter.id, amount: 250000)
Donation.create(sponsor_id: lane.id, planet_id: venus.id, amount: 850000)
Donation.create(sponsor_id: hillary.id, planet_id: mars.id, amount: 43500000)
Donation.create(sponsor_id: elon.id, planet_id: venus.id, amount: 12300000)
Donation.create(sponsor_id: elon.id, planet_id: uranus.id, amount: 12300000)
Donation.create(sponsor_id: bill.id, planet_id: jupiter.id, amount: 530000)
Donation.create(sponsor_id: neil.id, planet_id: venus.id, amount: 1205000)
Donation.create(sponsor_id: morgan.id, planet_id: mars.id, amount: 86700000)
Donation.create(sponsor_id: nick.id, planet_id: uranus.id, amount: 1005000)
Donation.create(sponsor_id: andrew.id, planet_id: jupiter.id, amount: 26050)
