# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#membership arguments - cost, lifter, gym
gym1 = Gym.new("planet fitness")
gym2 = Gym.new("Blink")
lifter1 = Lifter.new("Talha", 100)
lifter2 = Lifter.new("Abu", 110)
lifter3 = Lifter.new("Gifari", 50)
membership1 = Membership.new(80, lifter1, gym1)
membership2 = Membership.new(90, lifter2, gym2)
membership3 = Membership.new(90, lifter3, gym2)


binding.pry

puts "Gains!"
