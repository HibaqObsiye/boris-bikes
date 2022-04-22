require_relative 'bike'
class DockingStation 
    def release_bike
        bike =
        
        raise 'no bikes available' unless bike
    end
    def dock(bike)
        @bike = bike
    end

    attr_reader:bike
end