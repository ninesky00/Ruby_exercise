class Pirate
    attr_reader :name, :job
    def initialize(name, job='Scallywag')
       @name = name
       @job = job
       @cursed  = false
       @curse_meter=0
       @booty = 0
    end

    def cursed?
        @cursed
    end

    def commit_heinous_act
        @curse_meter += 1
        @cursed = true if @curse_meter == 3
    end

    def booty
        @booty
    end

    def rob_ship
        @booty += 100
    end
    
end