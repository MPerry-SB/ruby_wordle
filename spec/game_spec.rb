require './lib/game'

describe Game do
  describe '#new' do
    it 'creates a new game' do
      game = Game.new('HELLO')

      expect(game).not_to be_nil
    end

    it 'contains a word' do
      game = Game.new('HELLO')

      expect(game.word).to eq('HELLO')
    end

    it 'contains another word' do
      game = Game.new('SHELL')

      expect(game.word).to eq('SHELL')
    end

    it 'contains a number of attempts' do
      game = Game.new('SHELL')

      expect(game.attempts).to eq(0)
    end
  end

  describe 'guessing a word' do
    it 'allows a user to input a guess' do
    end
    it 'stores the current guess' do
    end
    it 'stores another guess' do
    end
    it 'will only allow the user to enter 5 letter words' do
    end
  end

  describe 'checking for a correct guess' do
    it 'checks if the guess is correct' do
    end
    it 'updates the current game as WON' do
    end
  end

  describe 'checking for incorrect guess' do
    it 'checks if the guess is incorrect' do
    end
    it 'updates the number of attemps' do
    end
  end

  describe 'check letter position' do
    it 'identifies the correctly positioned letters of a guess' do
    end
  end

  describe 'check letter existence' do
    it 'identifies if a letter is within a guess' do
    end
  end

  describe 'winning the game' do
    it 'can identify when a player has won the game' do
    end
  end

  describe 'losing the game' do
  end

  describe 'game reset' do
  end
end
