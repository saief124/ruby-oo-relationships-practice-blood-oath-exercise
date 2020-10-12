require_relative './cult.rb'
require_relative './follower.rb'
class Bloodoath
    attr_accessor :cult, :follower, :join_date
    attr_reader
    @@all=[]
    def initialize (cult, follower, init_date= 0000)
        @cult=cult
        @follower=follower
        @init_date=init_date
        
        @@all<<self
    end

    def initiation_date (join_date)
        new_blood_oa=self.new(cult, follower, join_date)
        init_date=new_blood_oa.find{|m| m.join_date}
    end

    def self.all
        @@all
    end

end