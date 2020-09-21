class Bag
    def initialize
        @count = 0
        @candy = []
        @empty = true
    end

    def empty?
        @empty
    end

    def count
        @count
    end 

    def candies
        @candy
    end

    def << (object)
        @count += 1
        @candy << (object)
        @empty = false
    end

    def contains?(type)
        @candy.map(&:type).include?(type)
    end

    def eat
        @count -= 1
    end
end