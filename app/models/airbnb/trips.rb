class Trip
    attr_accessor :guest, :listing

    @@all = [] 
    def initialize(guest, listing)
        @listing = listing
        @guest = guest
        @@all << self 
    end

    def self.all
        @@all
    end
    
 
end