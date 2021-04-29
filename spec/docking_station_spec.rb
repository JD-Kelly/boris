require 'docking_station'
    
describe DockingStation do 
  
  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }

    it "Errors when @bikes_docked is empty" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end
    it "only releases working bikes" do
      bike = Bike.new
      bike.broken
      subject.docked(bike)
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end
  
  describe "#docked" do
    it { is_expected.to respond_to(:docked).with(1).argument }
    
    it 'errors when docking station full' do 
      DockingStation::DEFAULT_CAPACITY.times { subject.docked(Bike.new) }
      expect { subject.docked(Bike.new)}.to raise_error "No space available" 
    end
  end

  it 'returns docked bike' do 
    bike = Bike.new
    subject.docked(bike)
    expect(subject.bikes_docked).to eq [bike] 
  end
  describe "#initialize" do
    it "has a default capacity of 20" do
      bike = DockingStation.new
      expect(bike.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it "saves argument to @capacity" do
      bike = DockingStation.new(30)
      expect(bike.capacity).to eq 30
    end
  end
end
