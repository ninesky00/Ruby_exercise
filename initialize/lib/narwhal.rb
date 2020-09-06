class Narwhal
    def initialize(hash)
        @hash = hash
    end

    def name
        @hash[:name]
    end

    def weight
        @hash[:weight]
    end

    def cute?
        @hash[:cute]
    end
end