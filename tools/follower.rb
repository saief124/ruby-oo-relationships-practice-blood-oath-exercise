require_relative './bloodoaths.rb'
class Follower
    attr_accessor :cult
    attr_reader :name, :age, :life_motto
    @@all=[]

    def initialize (name, age, life_motto = "None")
        @name = name
        @age= age
        @life_motto = life_motto
        
        @@all <<self
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select{|a| a.age>=age}
    end

    def cults
    outter_array=Bloodoath.all.select{|f| f.follower==self}
    outter_array.map {|i| i.cult}
    end
    
    def join_cult (cult)
        #if self.cults =! cult
        Bloodoath.new(cult, self) 
        end
    end

end