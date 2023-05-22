require './lib/game'

describe Game do
  describe '#new' do
    it 'creates a new game' do
      game = Game.new('HELLO')

      expect(game).not_to be_nil
    end

    it 'contains a word to guess' do
      game = Game.new('HELLO')

      expect(game.word).to eq('HELLO')
    end

    it 'contains another word to guess' do
      game = Game.new('SHELL')

      expect(game.word).to eq('SHELL')
    end

    it 'contains a number of attempts' do
      game = Game.new('SHELL')

      expect(game.attempts).to eq(0)
    end
  end

  describe 'guessing a word' do 
  end

  describe 'checking for correct guess' do
  end

  describe 'checking for incorrect guess' do
  end

  describe 'check letter position' do
  end

  describe 'check letter existence' do
  end

  describe 'winning the game' do
  end

  describe 'losing the game' do
  end

  describe 'game reset' do
  end
end
