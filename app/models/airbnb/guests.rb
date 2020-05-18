class Guest
    attr_accessor :name, :guest, :listing


    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        trips.map do |trip|
            trip.listing
        end
     end

    def trip_count
        trips.count
    end

    def self.find_all_by_name(name)
       Guest.all.select do |guests|
            guests.name == name
        end
    end

    def self.pro_traveler
        Guest.all.select do |trip|
            trip.trip_count > 1
        end  
    end

end