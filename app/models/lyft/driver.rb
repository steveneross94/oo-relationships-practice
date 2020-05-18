class Driver

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
            ride.driver == self
        end
    end

    def passengers
        rides.map do |r|
            r.passenger
        end
    end

    def total_distance
        total_distance = 0
        rides.each do |ride|
            total_distance += ride.distance 
        end
        total_distance
    end

    

    def self.mileage_cap(distance)
        Driver.all.select do |dr|
            dr.total_distance > distance
            ## can we pull #total_distance from the passenger class for this?
        end
    end
        
end