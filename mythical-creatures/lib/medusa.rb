class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues =[]
    end

    def statues
        @statues
    end


    def stare(victim)
        if @statues.length >= 3
            @statues.first.stone = false
            @statues.shift
        end
        @statues << victim
        victim.stone = true
    end


end

class Person
    attr_accessor :name, :stone
    def initialize(name)
        @name = name
        @stone = false
    end

    def stoned?
        @stone
    end
end