class Game
  def initialize(word)
    @attempts = 0
    @word = word
  end

  attr_reader :attempts, :word

  def user_guess(string)
    string
  end
end
