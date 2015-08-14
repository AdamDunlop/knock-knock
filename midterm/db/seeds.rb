Comedian.create(first_name:"Adam", last_name: "Dunlop", description: "chomp chomp", email: "a@d.com")
Comedian.create(first_name:"Evert", last_name: "R", email: "e@r.com")
Comedian.create(first_name:"Doge", last_name: "Dog", email: "d@d.com")
Comedian.create(first_name:"Jerry", last_name: "Seinfield", email: "j@s.com")
Comedian.create(first_name:"Kevin", last_name: "Hart", email: "k@h.com")




Event.create(name:"Laugh", comedian_id: 1, venue_id: 1, date: Date.today + 1.day, ticket_price: 10)
Event.create(name:"Laugh1", comedian_id: 1, venue_id: 2, date: Date.today + 2.day, ticket_price: 10)
Event.create(name:"Laugh2", comedian_id: 2, venue_id: 3, date: Date.today + 3.day, ticket_price: 10)
Event.create(name:"Laugh3", comedian_id: 2, venue_id: 1, date: Date.today + 1.day, ticket_price: 10)
Event.create(name:"Laugh4", comedian_id: 2, venue_id: 2, date: Date.today + 1.day, ticket_price: 10)
Event.create(name:"Laugh5", comedian_id: 3, venue_id: 3, date: Date.today + 2.day, ticket_price: 10)
Event.create(name:"Laugh6", comedian_id: 4, venue_id: 1, date: Date.today + 3.day, ticket_price: 10)
Event.create(name:"Laugh7", comedian_id: 4, venue_id: 2, date: Date.today + 1.day, ticket_price: 10)
Event.create(name:"Laugh8", comedian_id: 5, venue_id: 3, date: Date.today + 2.day, ticket_price: 10)
Event.create(name:"Laugh9", comedian_id: 5, venue_id: 1, date: Date.today + 3.day, ticket_price: 10)
Event.create(name:"Laugh10", comedian_id: 5, venue_id: 2, date: Date.today, ticket_price: 10)

Venue.create(name: "Stadium1", location: "123 W Hasting")
Venue.create(name: "Stadium2", location: "123 Chestnut Street")
Venue.create(name: "Stadium3", location: "1 West Georgia Street")

User.create(email:"test@g.com", password: "test")
User.create(email:"user@g.com", password: "user")


