class Character 
    attr_accessor :name, :actor

    @@all = []
    def initialize(name, actor)
        @actor = actor
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


end
