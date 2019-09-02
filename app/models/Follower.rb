
require 'pry'

class Follower

attr_accessor :name, :age, :life_motto

@@all = []

    def initialize(name, age, life_motto)
    # Follower.new("danny", 32, "cook or die trying")
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
    end

    def self.all
    @@all
    end

    def cults
        BloodOath.all.select { |cult| cult.follower == self}
    end

    def join_cult(cult, initiation_date)
        BloodOath.new(cult, self, initiation_date)
    end

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age == age }
    end
end







