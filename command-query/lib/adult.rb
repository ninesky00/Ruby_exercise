class Adult
    attr_reader :sober
    def initialize
        @sober = true
        @sobriety = 0
    end

    def sober?
        if @sobriety >= 3
            @sober = false
        else 
            true
        end
        @sober
    end

    def consume_an_alcoholic_beverage
        @sobriety += 1
    end

end