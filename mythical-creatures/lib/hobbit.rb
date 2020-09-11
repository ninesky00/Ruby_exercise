class Hobbit
    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
        @has_ring = false
        @is_short = true
    end

    def name 
        @name
    end

    def disposition
        @disposition
    end

    def age
        @age
    end

    def celebrate_birthday
        @age = @age + 1
    end

    def adult?
        if @age > 32
            return true
        else 
            return false
        end
    end

    def old?
        if @age >= 101
            return true
        else
            return false
        end
    end
    
    def has_ring?
        if @name == "Frodo"
            return true
        else
            return false
        end
    end

    def is_short?
        @is_short
    end
end