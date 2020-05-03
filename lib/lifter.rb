class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end

  def memberships
    Membership.all.select { |m| m.lifter == self}
  end

  def gyms
    memberships.map { |m| m.gym }
  end

  # def self.average_lift
  #   total _lift = 0
  #   self.all.each do |lift|
  #    total_lift += lift.lift_total 
  #   end
  #   total_lift
  # end

  def cost
    memberships.map { |membership| membership.cost}
  end

end
