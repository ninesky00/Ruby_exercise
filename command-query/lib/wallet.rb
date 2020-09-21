class Wallet
    def initialize
        @amount = 0
    
    end
    MONEY = {penny: 1, nickel: 5, dime: 10, quarter: 25, dollar: 100}
    def cents
        @amount
    end

    def << (obj)
      @amount += MONEY[obj]
    end

    def take(*obj)
        obj.each do |obj|
        @amount -= MONEY[obj] if @amount >= MONEY[obj]
        end
    end
    
end