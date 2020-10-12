require_relative './cult.rb'
require_relative './follower.rb'
class Bloodoath
    attr_accessor :cult, :follower
    attr_reader
    @@all=[]
    def initialize (cult, follower)
        @cult=cult
        @follower=follower
        
        
        @@all<<self
    end

    def initiation_date
#returns a String that is the initiation date
#of this blood oath in the format YYYY-MM-DD.
    end

    def self.all
        @@all
    end

end