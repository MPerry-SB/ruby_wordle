require './lib/game.rb'

describe Game do
  describe "#new" do
    it "creates a new game" do
      game = Game.new

      expect(game).not_to be_nil
    end

    it "contains a word to guess" do
      game = Game.new

      expect(game.word("HELLO")).to eq("HELLO")
    end

    it "contains a word to guess" do
      game = Game.new

      expect(game.word("SHELL")).to eq("SHELL")
    end
  end
end
