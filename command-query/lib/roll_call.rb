class RollCall
    def initialize
        @roll_call = [] 
    end

    def << (obj)
        @roll_call << obj
    end

    def longest_name
        @roll_call.max {|a, b| a.length <=> b.length }
    end
end