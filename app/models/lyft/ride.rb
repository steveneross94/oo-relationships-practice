class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.avg_distance
        total_distance = 0
        Ride.all.each do |ride|
            total_distance += ride.distance
        end
        total_distance = total_distance / Ride.all.count
    end
            
end