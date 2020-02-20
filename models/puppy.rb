# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)

class Puppy
    
    attr_reader :breed  
    attr_accessor :name, :age

    @@all = []
    @@pups = {}

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @@all << self
        @@all.each do |p| 
            if @@pups[p.name]
            else
               @@pups[p.name] = [p.breed, p.age]
            end
        end

    end
    def self.all
        @@all
    end
    def self.pups
        @@pups
    end

end
