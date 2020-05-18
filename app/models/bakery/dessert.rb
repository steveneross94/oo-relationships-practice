class Dessert
    
    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end 

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ing|
            ing.dessert == self
        end
    end


    def calories
        calories = 0
        ingredients.each do |ing|
            calories += ing.calorie_count
        end
        calories
    end




end