class Game
  def initialize()
    @attempts = 0
    @word = create_word
    @user_guesses = []
    @status = 'IN PROGRESS'
  end

  attr_accessor :attempts, :word, :user_guesses, :status

  def user_guess(string)
    @user_guesses << string
  end

  def check_user_guess
    last_guess = @user_guesses.last
    return "Please enter a word with exactly 5 letters" if last_guess.chars.count != 5
    return @status = 'GAME WON' && "Correct guess! You Win!" if last_guess == @word 
  end

  def create_word
    ["HELLO", "SHELL", "FOOBA"].sample
  end
end
