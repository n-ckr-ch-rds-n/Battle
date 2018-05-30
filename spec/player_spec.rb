require 'player'

describe Player do
  subject(:john) { described_class.new("John") }
  subject(:maud) { described_class.new("Maud") }

  describe '#name' do
    it 'returns player name' do
      expect(john.name).to eq "John"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(john.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hitpoints' do
      expect { john.receive_damage }.to change { john.hit_points }.by(-10)
    end
  end
end
