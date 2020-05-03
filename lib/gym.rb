class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |m| m.gym == self}
  end

  def lifters
    memberships.map { |m| m.lifter}
  end

  def lifters_name
    memberships.map { |m| m.lifter.name}
  end

    def lifters_lift_total
    memberships.select { |m| m.lifter.lift_total}
  end
end
