require 'docking_station'
    
describe DockingStation do 
  
  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }

    it "Errors when @bike_docked is empty" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end

  end

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end 

  it { is_expected.to respond_to(:docked).with(1).argument }

  it 'returns docked bike' do 
    bike = Bike.new
    subject.docked(bike)
    expect(subject.bike_docked).to eq bike 
  end
end
