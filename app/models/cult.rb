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


end
