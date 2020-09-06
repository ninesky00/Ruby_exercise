class Lion
    def initialize(hash)
        @hash = hash
    end

    def name
        @hash[:name]
    end

    def sound
        @hash[:sound]
    end
end