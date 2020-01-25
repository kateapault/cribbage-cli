class Deck

    def cards
        Card.all.reload.select { |c| c.location == "deck" }
    end
    
    def shuffle
        self.cards.shuffle!
    end

    def deal(hand1,hand2)
        self.shuffle[0..5].each do |card| 
            card.location = hand1.player 
            card.save
        end
        self.shuffle[6..11].each do |card| 
            card.location = hand2.player 
            card.save
        end
    end

    def draw
        self.shuffle[0]
    end

    def reshuffle
        Card.all.each do |c| 
            c.location = "deck" 
            c.save
        end
        self.shuffle
    end
end