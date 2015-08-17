# comedian: first_name, last_name, description, picture_url, email, password, widget_id

Comedian.create(first_name: "Various", description: "Check out Vancouver’s next top comics as they develop their craft.", picture_url: "http://blogs.psychcentral.com/no-family-madder/files/2014/01/Comedy-Club-Mike-225x149.jpg" )
Comedian.create(first_name:"Adam", last_name: "Dunlop", description: "chomp chomp", email: "a@d.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg", password:1234)
Comedian.create(first_name:"Evert", last_name: "R", email: "e@r.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg", password:1234)
Comedian.create(first_name:"Doge", last_name: "Dog", email: "d@d.com", picture_url:"http://s16.postimg.org/idsgi3rc5/doge.jpg", password:1234)
Comedian.create(first_name:"Jerry", last_name: "Seinfield", email: "j@s.com", picture_url:"https://thestuckcreative.files.wordpress.com/2013/03/jerry-seinfeld.jpg", password:1234)
Comedian.create(first_name:"Kevin", last_name:"Hart", email:"k@h.com", description: "Kevin Hart is the best", password: 1234, picture_url:"http://financialjuneteenth.com/wp-content/uploads/2014/06/kevin1.jpg")
Comedian.create(first_name:"Russell", last_name:"Peters", email:"r@p.com", description: "Something about Russell Peters", password: 1234, picture_url:"http://s1.ticketm.net/tm/en-ca/dam/a/725/8ecb4466-3bc6-498b-8644-ee22e10be725_16841_CUSTOM.jpg")
Comedian.create(first_name:"Weird", last_name:"Al", email:"w@a.com", description: "Something about Weird Al", password: 1234, picture_url:"http://static.tvtropes.org/pmwiki/pub/images/weirdal.jpg")
Comedian.create(first_name:"Ivan", last_name:"Decker", email:"i@v.com", description: "Since his start in comedy in a dusty broken down bar in East Vancouver Ivan Decker has quickly become one of the most enjoyable comedians in the country. He has honed his comedic skill and craft to one day hopefully end up back at that same broken down bar except perhaps this time he’ll get staff discount on a sandwich. A man can dream…", password: 1234, picture_url:"http://www.thecomedymix.com/wp-content/uploads/2012/04/Ivan-Decker-High-Res.jpg")
Comedian.create(first_name:"John", last_name:"Cullen", email:"j@c.com", description: "He has been praised for being “immediately likable” on stage, a statement he fully endorses. John makes audiences feel at ease, as though he is experiencing the show right along with them, and this has made his rapid success unsurprising.", password: 1234, picture_url:"https://www.yukyuks.com/utility/roster_image.cfm?image_name=john_cullen_webmar2015.jpg", widget_id: )


#event: name, comedian_id, venue_id, date, ticket_price, picture_url 

Event.create(name:"Laugh", comedian_id: 1, venue_id: 1, date: Date.today + 1.day, ticket_price: 10, picture_url: "http://i.telegraph.co.uk/multimedia/archive/03068/audience-laughing_3068752b.jpg")
Event.create(name:"Kevin Hart What Now? Tour", comedian_id: 6, date: DateTime.new(2015,9,10,19), ticket_price: 100, venue_id: 1, picture_url: "http://s1.ticketm.net/tm/en-ca/dam/a/f9e/dbecc002-b4c6-4890-8d65-fe391b6a7f9e_11521_CUSTOM.jpg" )
Event.create(name:"Weird Al", comedian_id: 8, date: DateTime.new(2015,9,8,20), ticket_price: 100, venue_id: 2, picture_url: "http://s1.ticketm.net/tm/en-ca/dbimages/197198a.jpg")
Event.create(name:"Russell Peters", comedian_id: 7, date: DateTime.new(2015,11,4,20), ticket_price: 100, venue_id: 3, picture_url: "http://s1.ticketm.net/tm/en-ca/dam/a/725/8ecb4466-3bc6-498b-8644-ee22e10be725_16841_CUSTOM.jpg")
Event.create(name:"Jerry Seinfield", comedian_id: 5, date: DateTime.new(2015,11,13,19), ticket_price: 100, venue_id: 2, picture_url: "http://s1.ticketm.net/tm/en-ca/dbimages/153733a.jpg")
Event.create(name:"Jerry Seinfield", comedian_id: 5, date: DateTime.new(2015,11,13,21), ticket_price: 100, venue_id: 2, picture_url: "http://s1.ticketm.net/tm/en-ca/dbimages/153733a.jpg")
Event.create(name:"Ivan Decker", comedian_id: 9, date: DateTime.new(2015,8,20,20), ticket_price: 10, venue_id: 4, picture_url: "http://www.thecomedymix.com/wp-content/uploads/2012/04/Ivan-Decker-High-Res.jpg")
Event.create(name:"Amateur Night", comedian_id: 1, date: DateTime.new(2015,8,19,20), ticket_price: 6.67, venue_id: 5, picture_url: "https://jugglingswords.files.wordpress.com/2014/10/audience-laughing.jpg")
Event.create(name:"John Cullen", comedian_id: 10, date: DateTime.new(2015,8,21,20), ticket_price: 19.05, venue_id: 5, picture_url: "ttps://www.yukyuks.com/utility/roster_image.cfm?image_name=john_cullen_webmar2015.jpg")
Event.create(name:"Laugh1", comedian_id: 1, venue_id: 1, date: Date.today + 3.day, ticket_price: 10, picture_url: "http://i.telegraph.co.uk/multimedia/archive/03068/audience-laughing_3068752b.jpg")
Event.create(name:"Laugh2", comedian_id: 3, venue_id: 2, date: Date.today + 2.day, ticket_price: 10, picture_url: "http://www.clean-comedy.com/wp-content/uploads/2015/05/Laughing_Animals.jpg")
Event.create(name:"Laugh3", comedian_id: 4, venue_id: 3, date: Date.today, ticket_price: 10, picture_url: "http://i.ytimg.com/vi/tYp5CCzot8Q/maxresdefault.jpg")
Event.create(name:"Laugh4", comedian_id: 4, venue_id: 4, date: Date.today + 2.day, picture_url: "https://jugglingswords.files.wordpress.com/2014/10/audience-laughing.jpg",ticket_price: 10)
Event.create(name:"Laugh5", comedian_id: 4, venue_id: 5, date: Date.today + 2.day, picture_url: "http://i.ytimg.com/vi/ZjZnrFsa1bk/maxresdefault.jpg",ticket_price: 10)


# venue:name, location, phone_number, email, password, picture_url 

Venue.create(name: "Rogers Arena", location: "800 Griffiths Way, Vancouver, BC V6B 6G1", phone_number: "(604) 899-7400", email: "rogers@a.com", password: 1234, picture_url: "http://arenanetwork.net/wp-content/uploads/2011/07/ROGERS-ARENA-VENUE-SHOT-EMPTY.jpg")
Venue.create(name: "Queen Elizabeth Theatre", location: "650 Hamilton Street
Vancouver BC, V6B 5N6", phone_number: "(604) 665-3050", email: "queene@t.com", password: 1234, picture_url: "http://vancouver.ca/images/cov/qet-stage-from-seating.jpg")
Venue.create(name: "Hard Rock Casino Vancouver", location: "2080 United Blvd,  Coquitlam,  BC  V3K 6W3", email: "hardrock@c.com", password: 1234, phone_number: "(604) 523-6888", picture_url: "http://www.dikeakos.com/media/1500x9999/Hard_Rock_4.jpg")
Venue.create(name: "the Comedy MIX", location: "1015 Burrard St, Vancouver, BC V6Z 1Y5", email: "comedy@m.com", password: 1234, phone_number: "(604) 684-5050", picture_url: "http://www.eligiblemagazine.com/wp-content/uploads/2014/10/comedy-club-forreal.jpg")
Venue.create(name: "Yuk Yuk's Vancouver", location: "2837 Cambie St, Vancouver, BC V5Z 3X7", email: "yy@v.com", password: 1234, phone_number: "(604) 696-9857", picture_url: "https://upload.wikimedia.org/wikipedia/en/b/bd/Yuk_Yuks_Logo.png")


# user: email, password
  Comedian.create(first_name:"Adam", last_name: "Dunlop", description: "chomp chomp", email: "a@d.com")
  Comedian.create(first_name:"Evert", last_name: "R", email: "e@r.com", password: 1234)
  Comedian.create(first_name:"Doge", last_name: "Dog", email: "d@d.com", password: 1234)
  Comedian.create(first_name:"Jerry", last_name: "Seinfield", email: "j@s.com", password: 1234)
  Comedian.create(first_name:"Kevin", last_name: "Hart", email: "k@h.com", password: 1234)




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
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 1, venue_id: 1)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 2, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 4, venue_id: 2)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)
Request.create(message: "Hello, can I please do some comedy at your club? Thanks", comedian_id: 3, venue_id: 3)



