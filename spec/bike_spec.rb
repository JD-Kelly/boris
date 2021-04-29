require 'bike'

describe Bike do 
    describe '#broken' do
        it 'defaults to not broken' do
            bike = Bike.new
            expect(bike.bike_broken).to eq false
        end
        it 'reports a bike as broken' do 
            bike = Bike.new
            bike.broken
            expect(bike.bike_broken).to eq true
        end
    end
end
