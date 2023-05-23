class Game
  def initialize()
    @attempts = 0
    @word = create_word
    @user_guesses = []
  end

  attr_reader :attempts, :word, :user_guesses

  def user_guess(string)
    @user_guesses << string
  end

  def check_user_guess
    last_guess = @user_guesses.last
    return "Please enter a word with exactly 5 letters" if last_guess.chars.count != 5
    return "Correct guess! You Win!" if last_guess == @word
  end

  private

  def create_word
    ["HELLO", "SHELL", "FOOBA"].sample
  end
end
