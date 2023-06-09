class Game
  def initialize
    @attempts = 0
    @word = create_word
    @user_guesses = []
    @status = 'IN PROGRESS'
  end

  attr_accessor :attempts, :word, :user_guesses, :status

  def user_guess(string)
    guess = string.strip
    return 'Please enter a word with exactly 5 letters' if guess.chars.count != 5

    add_user_guess(guess)
    check_user_guess
  end

  private

  def create_word
    %w[HELLO SHELL FOOBA].sample
  end

  def add_user_guess(string)
    @user_guesses << string
  end

  def check_user_guess
    user_guess = @user_guesses.last

    if user_guess == @word
      @status = 'GAME WON'
      return 'Correct guess! You Win!'
    end
    check_user_attempts
    return 'Incorrect guess! try again....' if check_letter_positions.zero?

    @correct_letters
  end

  def check_letter_positions
    word_array = @word.chars
    guess_array = @user_guesses.last.chars
    correct_letter_positions = 0
    @correct_letters = ''

    guess_array.each_with_index do |element, i|
      if guess_array[i] == word_array[i]
        @correct_letters << "#{element}/"
        correct_letter_positions =+ 1
      else
        @correct_letters << '_/'
      end
    end
    correct_letter_positions
  end

  def check_user_attempts
    @attempts += 1
    @status = 'GAME LOST' if @attempts >= 6
  end
end
