require 'pry'
class Listing
    attr_reader :city
    attr_accessor :listing

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end
    
    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        Listing.all.select do |list|
            list.city == city
        end
    end

    def self.most_popular
     
        Listing.all.max_by do |list|
            list.trip_count
        end
    end
    

end