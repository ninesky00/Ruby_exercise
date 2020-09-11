class Vampire
    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def name
        @name
    end

    def pet
        @pet
    end

    def thirsty?
        @thirsty
    end

    def drink
        @thirsty = false
    end

end