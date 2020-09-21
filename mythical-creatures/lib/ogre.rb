class Ogre
    attr_accessor :name, :home, :swings, :encounter_counter
    def initialize(name, home='Swamp')
        @name = name
        @home = home
        @encounter_counter = 0
        @swings = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter_counter += 1
        swing_at(human)
    end

    def swing_at(human)
        @swings += 1 if human.notices_ogre?
        human.knocked_out = true if @swings % 2 == 0
    end

    def apologize(human)
        human.knocked_out = false
    end

end

class Human
    attr_accessor :name, :encounter_counter, :knocked_out
    def initialize
        @name = 'Jane'
        @encounter_counter = 0
        @knocked_out = false
    end

    def notices_ogre?
        true if @encounter_counter % 3 == 0
    end

    def knocked_out?
        @knocked_out
    end
end