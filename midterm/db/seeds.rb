
Comedian.create(first_name:"Adam", last_name: "Dunlop", description: "chomp chomp", email: "a@d.com")
Comedian.create(first_name:"Evert", last_name: "R", email: "e@r.com", password: 1234)
Comedian.create(first_name:"Doge", last_name: "Dog", email: "d@d.com", password: 1234)
Comedian.create(first_name:"Jerry", last_name: "Seinfield", email: "j@s.com", password: 1234)
Comedian.create(first_name:"Kevin", last_name: "Hart", email: "k@h.com", password: 1234)



Comedian.create(first_name:"Adam", last_name: "Dunlop", description: "chomp chomp", email: "a@d.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg")
Comedian.create(first_name:"Evert", last_name: "R", email: "e@r.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg")
Comedian.create(first_name:"Doge", last_name: "Dog", email: "d@d.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg")
Comedian.create(first_name:"Jerry", last_name: "Seinfield", email: "j@s.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg")



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

Venue.create(name: "Stadium1", location: "123 W Hasting", email: "venue1@v.com", password: 1234)
Venue.create(name: "Stadium2", location: "123 Chestnut Street", email: "venue2@v.com", password: 1234)
Venue.create(name: "Stadium3", location: "1 West Georgia Street", email: "venue3@v.com", password: 1234)

User.create(email:"test@g.com", password: "test")
User.create(email:"user@g.com", password: "user")


Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 2, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 4, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)



