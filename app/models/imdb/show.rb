class Show
attr_accessor :name, :show_title
attr_reader :movie_title


    @@all = []

    def initialize(show_title)
        @show_title = show_title
        @@all << self
    end

    def self.all
        @@all
    end



    def self.on_the_big_screen
        Movie.all.select do |mov|
            mov.show_title == self
        end
    end

end