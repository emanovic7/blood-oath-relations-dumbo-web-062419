require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult1 = Cult.new("Flatiron", "new york city", 2012)
cult1.slogan = "Best place ever!"
cult2 = Cult.new("House Targarean", "Kings Landing", 1188)
cult2.slogan = "Dragonblood and fire for our enemies"
cult3 = Cult.new("Chuck E Cheese", "new york city", 1995)
cult3.slogan = "Come for the cheese, stay for the taylors"


follower1 = Follower.new("Chuck Norris", 70)
follower2 = Follower.new("Nemo", 2)
follower3 = Follower.new("Cersei", 40)
follower4 = Follower.new("Chris", 26)


bloodoath1 = BloodOath.new("A Lannister always pays her debts", follower3, cult2)
bloodoath2 = BloodOath.new("Best Pizza Ever", follower4, cult3)
bloodoath3 = BloodOath.new("master the code!", follower1, cult1)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
