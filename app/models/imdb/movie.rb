require 'pry'
class Movie
    attr_accessor :name

    @@all = []
    def initialize(movie_title)
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        MovieCharacters.all.select do |mov|
            mov.character == self
        end
    end


end