class Passenger
attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |r|
            r.driver
        end
    end

    def total_distance
        total_distance = 0
        rides.each do |ride|
            total_distance += ride.distance 
        end
        total_distance
    end

    def self.premium_members
        Passenger.all.select do |ride|
           ride.total_distance > 100
        end
    end
end