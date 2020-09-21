class Werewolf
    attr_reader :name, :location, :consumed

    def initialize(name, location="London")
        @name = name
        @location = location
        @human_form = true
        @werewolf_form = false
        @hungry = false
        @consumed = []
    end

    def human?
        @human_form
    end

    def change!
        if @human_form == true
            @human_form = false
            @werewolf_form = true
            @hungry = true
        elsif @human_form == false
            @human_form = true
            @werewolf_form = false
        end
    end

    def wolf?
        @werewolf_form
    end

    def hungry?
        @hungry
    end

    def consume(victim)
        if @human_form == false
        @consumed << victim
        victim.status = :dead
        @hungry = false
        end
    end

end