require './lib/docking_station'

describe DockingStation do

    it 'responds to release_bike' do
        expect(subject).to respond_to(:release_bike)    
    end
    it 'responds to working?' do
      bike =  subject.release_bike
      expect(bike).to be_working
    end
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike)}

    it 'returns the docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.dock(bike)).to eq bike
    end
    it 'raises an error if there is no bike' do
        expect{subject.release_bike}.to raise_error('no bikes available')
        
    end
end