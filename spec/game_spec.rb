require './lib/game'
require 'pry'

describe Game do
  describe '#new' do
    it 'creates a new game' do
      game = Game.new

      expect(game).not_to be_nil
    end

    it 'contains a random word' do
      game = Game.new

      allow(game).to receive(:word).and_return('HELLO')
    
      expect(game.word).to eq('HELLO')
    end

    it 'contains a number of attempts' do
      game = Game.new

      expect(game.attempts).to eq(0)
    end
  end
end

describe 'guessing a word' do
  it 'allows a user to input a guess' do
    game = Game.new

    game.user_guess('ATOMS')
    result = game.user_guesses

    expect(result).to eq(['ATOMS'])
  end

  it 'stores the current guess' do
    game = Game.new

    game.user_guess('ATOMS')
    result = game.user_guesses

    expect(result).to eq(['ATOMS'])
  end

  it 'stores another guess' do
    game = Game.new

    game.user_guess('ATOMS')
    game.user_guess('LIGHT')
    result = game.user_guesses

    expect(result).to eq(['ATOMS', 'LIGHT'])
  end

  it 'will not allow the user to enter a word less than 5 letters' do
    game = Game.new

    result = game.user_guess('BAZ')
    expected_string = "Please enter a word with exactly 5 letters"

    expect(result).to eq(expected_string)
  end

  it 'will not allow the user to enter a word more than 5 letters' do
    game = Game.new

    result = game.user_guess('FOOBARBAZ')
    expected_string = "Please enter a word with exactly 5 letters"

    expect(result).to eq(expected_string)
  end
end

describe 'checking for a correct guess' do
  it 'checks if the guess is correct' do
    game = Game.new
    allow(game).to receive(:user_guess).and_return('Correct guess! You Win!')
  
    result = game.user_guess('HELLO')
    expected_string = "Correct guess! You Win!"

    expect(result).to eq(expected_string)
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
  it 'can identify when a player has lost the game' do
  end
  it 'will not allow the user to have more than 6 attempts' do
  end
end

describe 'game reset' do
  it 'resets the game after winning' do
  end
  it 'resets the game after losing' do
  end
end
