require_relative './bloodoaths.rb'

class Cult
attr_accessor :follower
attr_reader :name, :location, :founding_year, :slogan 
@@all=[]

    def initialize (name, location, founding_year, slogan)
        
        @name= name
        @location= location
        @founding_year= founding_year 
        @slogan = slogan

        @@all << self
    end 

    def self.all
        @@all
    end

    def self.find_by_location (location)
        @@all.select {|m| m.location==location}
    end

    def self.find_by_name (name)
        @@all.select {|b| b.name==name}
    end

    def self.find_by_founding_year (year)
        @@all.select {|y| y.founding_year==year}
    end

    def recruit_follower(follower)
        Bloodoath.new(self, follower) 
    end

    def cult_population
       # @follower.length
    end

end