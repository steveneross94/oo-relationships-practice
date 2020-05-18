class Ingredient
    attr_accessor :calorie_count
    attr_reader :dessert
    @@all = [] 

    def initialize(name, dessert, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all 
    end


    def bakery
        self.dessert.bakery
    end

    # def self.find_all_by_name(ingredient)
    # end

end
