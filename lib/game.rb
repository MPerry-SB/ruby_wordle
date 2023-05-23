class Game
  def initialize(word)
    @attempts = 0
    @word = word
    @user_guesses = []
  end

  attr_reader :attempts, :word, :user_guesses

  def user_guess(string)
    @user_guesses << string
    string
  end
end
