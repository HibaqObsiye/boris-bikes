require './lib/docking_station'
require 'bike.rb'

describe DockingStation do

    it 'responds to release_bike' do
        expect(subject).to respond_to(:release_bike)    
    end
    it 'responds to working?' do
      bike = Bike.new
      expect(bike.working?).to eq true
    end
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike)}

    it 'returns the docked bikes' do
        bike = Bike.new
        #subject.dock(bike)
        expect(subject.dock(bike)).to eq subject.bikes
    end
    it 'raises an error if there is no bike' do

        empty_docking_station = DockingStation.new
        expect{subject.release_bike}.to raise_error(StandardError)
        
    end
    it 'raises an error when full' do
        bike = Bike.new
        subject.bikes << bike
        expect{subject.dock(bike)}.to raise_error(StandardError)
    end
end