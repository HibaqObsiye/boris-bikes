require_relative 'bike'
class DockingStation 

    attr_reader :bike
    attr_accessor :bikes

    def initialize
        @bikes = []
    end

    def release_bike
        #bike =
        
        raise StandardError #unless bike
        
    end
    def dock(bike)
        
        if !@bikes.empty?
            raise StandardError
        else
            bike = Bike.new
            @bikes << bike
        end

    end

    
end