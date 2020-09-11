class Unicorn
    def initialize(name, color = "white")
        @name = name
        @color = color
        
    end

    def name 
        @name
    end

    def color
        @color
    end

    def white?
        return @color == "white"
    end
    
    def say(saying)
        "**;* #{saying} **;*"
    end

end