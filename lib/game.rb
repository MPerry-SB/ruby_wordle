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

    update_attempts
    add_user_guess(string)
    check_user_guess(string)
  end

  private

  def create_word
    %w[HELLO SHELL FOOBA].sample
  end

  def update_attempts
    @attempts += 1
  end

  def add_user_guess(string)
    @user_guesses << string
  end

  def check_user_guess(string)
    user_guess = string.strip

    if user_guess == @word
      @status = 'GAME WON'
      return 'Correct guess! You Win!'
    end
    return 'Incorrect guess! try again....' if check_letter_positions(user_guess) == 0
    @corrent_letters
  end

  def check_letter_positions(string)
    word_array = @word.chars
    guess_array = string.chars
    result = []
    correct_letter_positions = 0
    @corrent_letters= ""

    guess_array.each_with_index do |element, i|
      if guess_array[i] == word_array[i]
        result = element + "/"
        @corrent_letters << result
        correct_letter_positions =+ 1
      else
        @corrent_letters << "_/"
      end
    end
    correct_letter_positions
  end
end
