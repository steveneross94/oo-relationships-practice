require_relative '../config/environment.rb'
require 'pry'
# require  './app/models/airbnb/guests.rb'
# require './app/models/airbnb/listings.rb'
# require './app/models/airbnb/trips.rb'
# require  './app/models/bakery/ingredient.rb'
# require './app/models/bakery/dessert.rb'
# require './app/models/bakery/bakery.rb'

def reload
  load 'config/environment.rb'
end

# guest1 = Guest.new("Steven")
# guest2 = Guest.new("Renee")
# guest3 = Guest.new("John")
# guest4 = Guest.new("Steven")
# list = Listing.new("Phoenix")
# list2 = Listing.new("Phoenix")
# list3 = Listing.new("Dallas")
# list4 = Listing.new("Phoenix")
# list5 = Listing.new("NYC")
# trip = Trip.new(guest1, list)
# trip1 = Trip.new(guest3, list2)
# trip2 = Trip.new(guest2, list2)
# trip3 = Trip.new(guest3, list3)
# trip4 = Trip.new(guest1, list4)
# trip5 = Trip.new(guest1, list5)

# bakery = Bakery.new("The Bakery")
# bakery1 = Bakery.new("A Bakery")
# bakery2 = Bakery.new("Some Bakery")
# dessert = Dessert.new("Scone", bakery)
# dessert3 = Dessert.new("Pie",bakery)
# dessert1 = Dessert.new("Muffin",bakery)
# dessert2 = Dessert.new("Donut", bakery)
# ingredient = Ingredient.new("chocolate", dessert1, 100)
# ingredient1 = Ingredient.new("vanilla", dessert1, 200)
# ingredient2 = Ingredient.new("strawberry", dessert2, 500)

# passenger1 = Passenger.new("Han")
# passenger2 = Passenger.new("Deckerd Shaw")
# passenger3 = Passenger.new("Monica Fuentes")
# passenger4 = Passenger.new("Agent Bilkins")
# driver1 = Driver.new("Brian O'Connor")
# driver2 = Driver.new("Dominic Toretto")
# driver3 = Driver.new("Roman Pierce")
# driver4 = Driver.new("Letty")
# ride1 = Ride.new(driver1, passenger3, 110.0)
# ride2 = Ride.new(driver2, passenger2, 200.25)
# ride3 = Ride.new(driver1, passenger4, 440.0)
# ride4 = Ride.new(driver4, passenger1, 20.1)

show1 = Show.new("Peaky Blinders")
character1 = Character.new("Thomas Shelby", "Cillian Murphy")
character2 = Character.new("John Shelby", "Joe Cole")
character3 = Character.new("Arthur Shelby", "Paul Anderson")
# character4 = Character.new("Alfie Solomon", actor1)
actor1 = Actor.new("Tom Hardy")
charactershow1 = CharacterShow.new(character1, show1)


binding.pry
0