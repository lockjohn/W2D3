require 'rspec'
require 'card'
require 'deck'
require 'hand'
require 'game'
require 'player'

RSpec.describe Card do
  subject(:card) {Card.new(value,suit)}

  describe "#change_face" do
    context "when face up" do
      card.face = :up
      it "hides the face" do
        card.change_face
        expect(card.face).to eq(:down)
      end
    end
    context "when face down" do
      card.face = :down
      it "shows the face" do
        card.change_face
        expect(card.face).to eq(:up)
      end
    end
  end
end

RSpec.describe Deck do
  subject(:deck) {Deck.new}

  describe "#populate_deck" do
    before (:each) do
      deck.populate_deck
    end
    it "contains an array of 52 cards" do
      expect(deck.contents.length).to eq(52)
    end
    it "contains card objects" do
      expect(deck.contents.all?{|c| c.is_a?(Card)}).to be true
    end
    it "contains the correct number of suits"do

    end
  end

  describe "#shuffle" do
    it "puts card in random order" do

    end
  end

  describe "#deal" do
    it "distributes right number of cards to each hand" do

    end
    it "creates an undealt pile of cards" do

    end
  end

end
