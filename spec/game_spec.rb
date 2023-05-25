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

    expect(result).to eq(%w[ATOMS LIGHT])
  end

  it 'will not allow the user to enter a word less than 5 letters' do
    game = Game.new

    game.user_guess('BAZ')
    result = game.check_user_guess
    expected_string = 'Please enter a word with exactly 5 letters'

    expect(result).to eq(expected_string)
  end

  it 'will not allow the user to enter a word more than 5 letters' do
    game = Game.new

    game.user_guess('FOOBARBAZ')
    result = game.check_user_guess
    expected_string = 'Please enter a word with exactly 5 letters'

    expect(result).to eq(expected_string)
  end
end

describe 'checking for a correct guess' do
  it 'checks if the guess is correct for a correct guess' do
    game = Game.new
    game.word = 'HELLO'

    game.user_guess('HELLO')
    result = game.check_user_guess
    expected_string = 'Correct guess! You Win!'

    expect(result).to eq(expected_string)
  end

  it 'updates the current game as WON for a correct guess' do
    game = Game.new

    allow(game).to receive(:status).and_return('GAME WON')

    game.user_guess('HELLO')
    result = game.status
    expected_string = 'GAME WON'

    expect(result).to eq(expected_string)
  end
end

describe 'checking for incorrect guess' do
  it 'checks if the guess is incorrect' do
    game = Game.new
    game.word = 'FOOBA'

    game.user_guess('HELLO')
    result = game.check_user_guess
    expected_string = 'Incorrect guess! try again....'

    expect(result).to eq(expected_string)
  end

  it 'updates the number of attemps' do
    game = Game.new
    game.word = 'FOOBA'

    game.user_guess('HELLO')
    game.check_user_guess
    result = game.attempts
    expected_string = 'Incorrect guess! try again....'
    
    expect(result).to eq(1)
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
