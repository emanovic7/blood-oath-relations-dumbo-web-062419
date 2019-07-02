class Follower

  attr_accessor :life_motto, :cults
  attr_reader :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @cults = []
    @@all << self
  end

  def cults
    ff_oaths = []
    BloodOath.all.each do |oath|
      if oath.follower == self
        ff_oaths << oath.cult
      end
    end
    ff_oaths
  end


  def join_cult(cult)
    cult.recruit_follower(self)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

  def my_cults_slogans
    self.cults.each_with_index do |cult, i|
      puts "#{i+1}. #{cult.slogan}."
    end
    return nil
  end

  def self.most_active
    cult_count = 0
    member = nil

    @@all.each do |follower|
      if follower.cults.length > cult_count
        cult_count = follower.cults.length
        member = follower
      end
    end
    member
  end



end


# Follower.top_ten
# returns an Array of followers; they are the ten most active followers
