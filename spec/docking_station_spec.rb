require 'docking_station'
    
describe DockingStation do 
  it { is_expected.to respond_to :release_bike }
  
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end 

  it { is_expected.to respond_to(:docked).with(1).argument }

  it 'returns docked bike' do 
    bike = Bike.new
    subject.docked(bike)
    expect(subject.bike_docked).to eq bike 
  end
end
