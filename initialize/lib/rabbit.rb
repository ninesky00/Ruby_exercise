class Rabbit
    def initialize(hash)
        @hash = hash
        
    end

    def name
        if @hash[:num_syllables] == 2
        @hash[:name] + " Rabbit"
        else
            @hash[:name]
        end
    end
end