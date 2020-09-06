class Parrot
    def initialize(hash)
        @hash = hash
    end

    def name
        @hash[:name]
    end

    def sound
        "Squawk!"
    end

    def known_words 
        @hash[:known_words]
    end

end