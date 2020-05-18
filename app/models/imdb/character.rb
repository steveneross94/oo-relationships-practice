class Character 
    attr_accessor :name, :actor
    attr_reader :character

    @@all = []
    def initialize(character, actor)
        @actor = actor
        @character= character
        @@all << self
    end

    def self.all
        @@all
    end

    # def character_show
    # CharacterShow.all.select do |char|
    #     char.character == self
    #     end
    # end

    def shows
        CharacterShow.all.map do |char|
            char.show
        end
    end

    def movies
        MovieCharacters.all.map do |char|
            char.movie
        end
    end


end
