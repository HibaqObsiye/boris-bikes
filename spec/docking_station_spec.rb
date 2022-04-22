require './lib/docking_station'

describe DockingStation do

    it 'responds to release_bike' do
        expect(subject).to respond_to(:release_bike)    
    end
    it 'responds to working?' do
      bike =  Bike.new
      expect(bike).to respond_to(:working?)
    end

end