
class Cult

    attr_accessor :name, :location, :founding_year
    
    @@all = []

    def initialize(name, location, founding_year, slogan)
    # Cult.new("Britscult", "Atlanta", 1999, "we are a fuckin cult!")
        @name = name
        @location = location 
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower, initiation_date)
        BloodOath.new(self, follower, initiation_date)
    end

    def cult_population
        # cult1.cult_population
        population = []
        BloodOath.all.select do |oath| 
            if oath.cult == self
            population << oath.follower       
            end
        end
        population
    end

    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.find {|cult| cult.location == location}
    end   

    def self.find_by_founding_year(year)
        self.all.find {|cult| cult.founding_year == year}
    end

    def average_age 
        ages = []
        BloodOath.all.select do |oath| 
            if oath.cult == self
            ages << oath.follower.age  
            end
        end
        ages.sum/ ages.length
    end
end