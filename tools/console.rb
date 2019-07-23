# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gold_gym = Gym.new("Gold's Gym")
planet_fitness = Gym.new("Planet Fitness")
twenty_hour = Gym.new("24 Hour Fitness")
katana = Lifter.new("Katana",100)
barry = Lifter.new("Barry", 200)
cindy = Lifter.new("Cindy",300)
cindy.sign_up_membership(gold_gym,20)
cindy.sign_up_membership(twenty_hour,25)
barry.sign_up_membership(gold_gym,20)
katana.sign_up_membership(gold_gym,20)
cindy.sign_up_membership(planet_fitness,30)
binding.pry

puts "Gains!"
