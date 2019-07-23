class Gym
  attr_accessor :name

  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships_at_this_gym
    Membership.all.collect do |membership|
      if membership.gym == self
        membership
      end
    end
  end

  def lifters_at_this_gym
    Membership.all.collect do |membership|
      if membership.gym == self
        membership.lifter
      end
    end
  end

  def lift_total_of_gym
    #not working
    sum = 0
    banana = Membership.all.collect do |membership|
      if membership.gym == self
        membership.lifter.lift_total
      end
    end
   banana.compact.sum/banana.compact.length
  end


end
