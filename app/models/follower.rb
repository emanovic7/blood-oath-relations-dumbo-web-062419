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
      if self == oath.follower
        ff_oaths << oath.cult
      end
    end
    ff_oaths
  end


  def join_cult(cult)
    @cults << cult
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|

    end
  end

end
