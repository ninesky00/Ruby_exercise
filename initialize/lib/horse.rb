class Horse
    attr_reader :name
  
    def initialize(name)
      @name = name
      @diet = []
    end

    def diet
        @diet
    end

    def add_to_diet(new_diet)
       @diet << new_diet
    end 
  end