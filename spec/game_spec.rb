require './lib/game.rb'

describe Game do
  describe "#new" do
    it "creates a new game" do
      game = Game.new
      expect(game).not_to be_nil
    end
  end
end
