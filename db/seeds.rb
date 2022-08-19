Affiliation.destroy_all

a1 = Affiliation.create :title => 'Sith'
a2 = Affiliation.create :title => 'Rebel Alliance'
a3 = Affiliation.create :title => 'Jedi Order'
a4 = Affiliation.create :title => 'Galactic Republic'
a5 = Affiliation.create :title => 'Rebel Alliance'
a6 = Affiliation.create :title => 'Hutt Clan'
a7 = Affiliation.create :title => 'First Order'
a8 = Affiliation.create :title => 'The Resistance'

puts "#{Affiliation.count} affiliations created"

Location.destroy_all
l1 = Location.create :title => 'Death Star'
l2 = Location.create :title => 'Tatooine'
l3 = Location.create :title => 'kashyyk'
l4 = Location.create :title => "Yoda's Hutt"
l5 = Location.create :title => 'Naboo'
l6 = Location.create :title => 'Alderaan'
l7 = Location.create :title => 'Tatooine'
l8 = Location.create :title => 'chandrila'
l9 = Location.create :title => 'Stewjon'
l10 = Location.create :title => 'Corellia'
l11 = Location.create :title => 'Kamino'
l12 = Location.create :title => 'Jakku'
l13 = Location.create :title => 'Haruun Kal'
l14 = Location.create :title => 'Cloud City'

puts "#{Location.count} locations created"

Person.destroy_all
p1 = Person.create :first_name => 'Darth', :last_name => 'Vadar', :species => 'Human', :gender => 'Male', :weapon => 'Lightsaber', :vehicle => 'Tiefighter' 
p2 = Person.create :first_name => 'Chewbacca', :species => 'Wookie', :gender => 'm', :weapon => 'Bowcaster', :vehicle => 'Millennium Falcon'
p3 = Person.create :first_name => 'Yoda', :species => 'Unknown', :gender => 'Male', :weapon => 'Lightsaber'
p4 = Person.create :first_name => 'Sheeve', :last_name => 'Palpatine', :species => 'Human', :gender => 'Male', :weapon => 'Lightsaber'
p5 = Person.create :first_name => 'Princess', :last_name => 'Leia', :species => 'Human', :gender => 'Female', :weapon => 'Blaster Pistol'
p6 = Person.create :first_name => 'jabba', :last_name => 'the Hutt', :species => 'Hutt', :gender => 'Male', :vehicle => "Jabba's Sale Barge"
p7 = Person.create :first_name => 'Kylo', :last_name => 'Ren', :species => 'Human', :gender => 'Male', :weapon => 'Lightsaber'
p8 = Person.create :first_name => 'Obi-Wan', :last_name => 'Kenobi', :species => 'Human', :gender => 'M', :weapon => 'Lightsaber', :vehicle => 'Jedi Starfighter'
p9 = Person.create :first_name => 'luke', :last_name => 'skywalker', :species => 'Human', :gender => 'M', :weapon => 'Lighsaber~!@@@', :vehicle => 'X-wing Starfighter'
p10 = Person.create :first_name => 'Jar Jar', :last_name => 'Binks', :species => 'Gungan', :gender => 'Male', :weapon => 'Energy ball', :vehicle => 'Gungan Bongo Submarine'
p11 = Person.create :first_name => 'R2-D2', :species => 'Astromech Droid', :gender => 'Other', :vehicle => 'X-wing Starfighter'
p12 = Person.create :first_name => 'Han', :last_name => 'Solo', :species => 'Human', :gender => 'Male', :weapon => 'Blaster Pistol', :vehicle => 'Millenium Falcon'
p13 = Person.create :first_name => 'Boba', :last_name => 'Fett', :species => 'Human', :gender => 'm', :weapon => 'Lightsaber', :vehicle => 'Slave 1'
p14 = Person.create :first_name => 'Rey', :last_name => 'Jakku', :species => 'Human', :gender => 'f', :weapon => 'Lightsaber', :vehicle => "Rey's Speeder"
p15 = Person.create :first_name => 'padme', :last_name => 'amidala', :species => 'Human', :gender => 'Female', :vehicle => 'Naboo N-1 Starfighter'
p16 = Person.create :first_name => 'C-3PO', :species => 'Human', :gender => 'Female', :vehicle => '-1'
p17 = Person.create :first_name => 'Mace', :last_name => 'Windu', :species => 'Human', :gender => 'Male', :weapon => 'Lightsaber'
p18 = Person.create :first_name => 'Lando', :last_name => 'calrissian', :species => 'Human', :gender => 'Male', :weapon => 'Blaster Pistol', :vehicle => 'Millenium Falcon'

puts "#{Person.count} people created"