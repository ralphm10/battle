require 'player'

describe Player do

  subject(:player1) { Player.new('Ralph') }
  subject(:player2) { Player.new('Paul') }

  describe '#name' do
    it 'returns its name' do
      expect(player1.name).to eq('Ralph')
    end
  end

  describe '#points' do
    it 'displays hit points' do
      expect(player1.points).to eq(100)
    end
  end

  describe '#receive_damage' do
    it 'decreases points' do
      player1.receive_damage
      expect(player1.points).to eq(90)
    end
  end 

end
