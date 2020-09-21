class Centaur
    attr_reader :name, :breed, :sick
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @cranky_meter = 0
        @standing = true
        @laying = false
        @sick = false
    end

    def shoot
        if @laying == true
            "NO!"
        elsif @cranky_meter < 3
        @cranky_meter += 1
        "Twang!!!"
        else 
            "NO!"
        end
    end

    def run
        if @laying == true
            "NO!"
        elsif @cranky_meter < 3
        @cranky_meter += 1
        "Clop clop clop clop!!!"
        else 
            "NO!"
        end
    end

    def cranky?
        if @cranky_meter >= 3
            @cranky = true
        elsif @cranky_meter < 3
            @cranky = false
        end
        @cranky
    end

    def standing?
        @standing
    end

    def sleep
        @standing == true ? "NO!" : @cranky_meter = 0
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def laying?
        @laying
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def drink_potion
        if @cranky_meter == 0
            @sick = true
        else
        @standing == true ? @cranky_meter = 0 : "NO!"
        end
    end


end