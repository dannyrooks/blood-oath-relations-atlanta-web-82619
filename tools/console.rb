require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new("Britscult", "Atlanta", 1999, "we are a fuckin cult!")
c2 = Cult.new("Danny'sCult", "Dallas", 2019, "we love the cowboys")
c3 = Cult.new("Raza'sCult", "Miami", 2000, "go jags")
c4 = Cult.new("CoffeeCult", "Oakhurst", 2020, "we love caffiene")

f1 = Follower.new("Danny", 32, "life's a garden")
f2 = Follower.new("Raza", 22, "I love the jags")
f3 = Follower.new("Brit", 24, "I love code")
f4 = Follower.new("jilly", 34, "i love yoga")

#def initialize(cult, follower, initiation_date)
b1 = BloodOath.new(c1, f2, 1999)
b2 = BloodOath.new(c3, f4, 2010)
b3 = BloodOath.new(c1, f1, 2000)
b4 = BloodOath.new(c4, f3, 1997)
b5 = BloodOath.new(c4, f4, 1967)
b6 = BloodOath.new(c3, f3, 1902)

first = c1.recruit_follower(f3, 2000)
second = c3.cult_population

third = Cult.find_by_name("Britscult")
fourth = Cult.find_by_location("Miami")
fifth = Cult.find_by_location("freeport")
sixth = Cult.find_by_founding_year(1999)

seventh = f1.cults
eighth = f3.cults
ninth = f3.join_cult(c2, 2010)

tenth = Follower.of_a_certain_age(34)

eleventh = c1.average_age

binding.pry




puts "Mwahahaha!" # just in case pry is buggy and exits
