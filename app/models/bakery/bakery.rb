class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |d|
            d.bakery == self
        end
    end

    def ingredients
       desserts.map do |d|
            d.ingredients
        end
    end

    def average_calories
        total_calories = 0
        desserts.each do |des|
            total_calories += des.calories.to_f
        end
    average_calories = total_calories / desserts.count
    average_calories    
    end

    # def shopping_list
    #     list = []
    #     desserts.each do |des|
    #         des.ingredients.each do |ing|
    #         list << ing.name
    #         end
    #     end
    #    list
    # end
end