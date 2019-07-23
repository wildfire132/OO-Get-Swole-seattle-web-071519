class Lifter
  attr_accessor :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def list_of_all_gyms
    Membership.all.collect do |membership|
      if membership.lifter == self
        membership
      end
    end
  end

  def self.avg_lift_total
    sum = 0
    banana = Lifter.all.collect do |lifter|
      lifter.lift_total 
    end
    banana.sum/banana.length
  end

  def total_cost
    sum = 0
    Membership.all.each do |membership|
        if membership.lifter == self
          sum += membership.cost
        end
      end
      sum
  end

  def sign_up_membership(gym,membership_cost)
    Membership.new(membership_cost,gym, self)
  end

end
