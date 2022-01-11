describe Player do
    subject(:alister) { Player.new('Alister') }
    subject(:oliver) { Player.new('Oliver') }

    describe '#name' do
        it 'returns player name' do 
            expect(alister.name).to eq('Alister')
        end 
    end

    describe '#hit_points' do
        it 'returns default hit points' do 
            expect(alister.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end 
    end

    describe '#attack' do
        it 'damages the other player' do 
            expect(oliver).to receive(:receive_damage)
            alister.attack(oliver)
        end 
    end 

    describe '#receive_damage' do
        it 'reduces player hit points by 10' do 
            expect { oliver.receive_damage }.to change { oliver.hit_points }.by(-10)
        end 
    end 
    

end