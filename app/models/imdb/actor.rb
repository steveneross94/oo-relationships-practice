class Actor
    attr_accessor :name
    attr_reader :actor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select do |char|
            char.actor == self
        end
    end

end