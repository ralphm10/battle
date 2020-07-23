require 'player'

describe Player do
  it 'returns its name' do
    player1 = Player.new('Ralph')
    expect(player1.name).to eq('Ralph')
  end
end
