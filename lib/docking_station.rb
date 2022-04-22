require_relative 'bike'
class DockingStation 
    attr_reader :bike
    attr_accessor :bikes
    @bikes = []
    def release_bike
        #bike =
        
        raise StandardError #unless bike
        
    end
    def dock(bike)
        @bike = bike

    end

    
end