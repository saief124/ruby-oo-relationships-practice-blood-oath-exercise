require_relative '../config/environment.rb'
require_relative './bloodoaths.rb'
require_relative './cult.rb'
require_relative './follower.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Cults

a= Cult.new("Born Free", "New York", 1867, "Love Freedom")
b= Cult.new("Omega_Riders", "Austin", 1902, "Austin Riders");
c= Cult.new("Powerpuff_gurls", "Houston", 2020, "Girl Power");
d= Cult.new("Bikers_club", "Houston", 1899, "Riding is life");

#Followers

ryan= Follower.new("Ryan", 20, "Carpe Diem");
jessica= Follower.new("Jess", 21, "Girls like to ride");
dave= Follower.new("Dave", 33);

#Bloodoaths

oath1= Bloodoath.new(b, ryan, 2019);
oath2= Bloodoath.new(c, jessica, 2018);
oath3= Bloodoath.new(d, dave);



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits