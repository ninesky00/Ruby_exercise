class Bag
    attr_accessor :count, :candy
    def initialize
        @candy = []
    end

    def empty?
        @candy.empty?
    end

    def count
        @candy.length
    end 

    def candies
        @candy
    end

    def << (object)
        @candy << object
    end

    def contains?(type)
        @candy.any? do |candy|
            candy.type == type
        end
    end

    def grab(type)
        grabbed = @candy.find do |candy| 
            candy.type == type
        end    
        @candy.pop 
        grabbed
    end

    def take(amount)
        taken = []
        (1..amount).map do 
            taken << @candy.pop
        end
        taken
    end

end