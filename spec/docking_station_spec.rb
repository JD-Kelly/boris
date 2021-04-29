require 'docking_station'
    
describe DockingStation do 
  
  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }

    it "Errors when @bikes_docked is empty" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end

  end

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end 
  
  describe "#docked" do
    it { is_expected.to respond_to(:docked).with(1).argument }
    
    it 'errors when docking station full' do 
      20.times { subject.docked(Bike.new) }
      expect { subject.docked(Bike.new)}.to raise_error "No space available" 
    end
  end

  it 'returns docked bike' do 
    bike = Bike.new
    subject.docked(bike)
    expect(subject.bikes_docked).to eq [bike] 
  end
end
