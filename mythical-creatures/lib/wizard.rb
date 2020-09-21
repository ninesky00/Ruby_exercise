class Wizard 
    attr_reader :name
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true 
        @rested_counter = 0
    end

    def bearded?
        @bearded
    end

    def incantation(chant)
        "sudo " + chant
    end

    def rested?
        @rested unless @rested_counter == 3
    end

    def cast
        @rested_counter += 1
        "MAGIC MISSLE!"
    end

end