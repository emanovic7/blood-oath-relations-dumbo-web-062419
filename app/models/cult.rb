class Cult

  attr_accessor :name, :location, :slogan, :followers
  attr_reader :founding_year

  @@all = []


  def initialize(name, location, founding_year)
    @name = name
    @location = location
    @founding_year = founding_year
    @@all << self
    @followers = []
  end

  def recruit_follower(follower)
    @followers << follower
  end

  def cult_population
    @followers.length
  end

  def self.all
    @@all
  end


  def self.find_by_name(cult_name)
    @@all.find do |cult|
      cult.name == cult_name
    end
  end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_year(year)
    @@all.select do |cult|
      cult.founding_year == year
    end
  end

  # def followers
  #   Follower.all.select do |follower|
  #     follower.cult == self
  #   end
  # end

  def average_age
    ages = 0
    count = 0

    Follower.all.each do |follower|
     if follower.cults.include?(self)
        ages += follower.age
        count += 1
     end
    end

    ages / count
  end

  def my_followers_mottos
    mottos = []

    Follower.all.each do |follower|
      if follower.cults.include?(self)
        mottos << follower.life_motto
      end
    end
    mottos
  end

  def self.least_popular
    follower_count = 0
    cult = nil

    @@all.each do |cult|
      if cult.cult_population < follower_count
        cult = cult
      end
    end
    cult
  end

  def self.most_common_location

  end


end



# Cult.least_popular
# returns the Cult instance who has the least number of followers :(
# Cult.most_common_location
# returns a String that is the location with the most cults
