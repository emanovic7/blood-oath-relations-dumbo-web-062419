class BloodOath
  attr_accessor :date

  attr_reader :pledge, :follower, :cult

  @@bloodoaths = []

  def initialize(pledge, follower, cult)
    @pledge = pledge
    @follower = follower
    @cult = cult
    @date = Time.now.strftime("%d/%m/%Y")
    @@bloodoaths << self
  end

  def initiation_date
    @date
  end

  def self.all
    @@bloodoaths
  end

  def self.first_oath
    @@bloodoaths[0].follower
  end

end
