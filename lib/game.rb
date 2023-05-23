class Game
  def initialize(word)
    @attempts = 0
    @word = word
    @user_guesses = []
  end

  attr_reader :attempts, :word, :user_guesses

  def user_guess(string)
    return "Please enter a word with exactly 5 letters" if string.chars.count != 5
    @user_guesses << string
    @user_guesses.last
  end
end
