class Game
  def initialize
    @attempts = 0
    @word = create_word
    @user_guesses = []
    @status = 'IN PROGRESS'
  end

  attr_accessor :attempts, :word, :user_guesses, :status

  def user_guess(string)
    return 'Please enter a word with exactly 5 letters' if string.chars.count != 5

    @attempts += 1
    @user_guesses << string
    check_user_guess(string)
  end

  private

  def check_user_guess(string)
    user_guess = string.strip
    return 'Incorrect guess! try again....' if user_guess != @word

    @status = 'GAME WON'
    'Correct guess! You Win!'
  end

  def create_word
    %w[HELLO SHELL FOOBA].sample
  end
end
