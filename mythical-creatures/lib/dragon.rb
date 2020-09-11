class Dragon
    def initialize(name, color, rider, hungry = true)
        @name = name
        @color = color
        @rider = rider
        @hungry = hungry
        @hunger_level = 3

    end

    def name 
        @name
    end

    def color
        @color
    end

    def rider
        @rider
    end

    def hungry?
        @hungry
    end

    def eat
        @hunger_level = @hunger_level - 1
        if @hunger_level == 0
            @hungry = false
        end
    end
end