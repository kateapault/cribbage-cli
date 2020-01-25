class Hand
    attr_accessor :player

    def initialize(player)
        @player = player
    end

    def cards
        Card.all.reload.select { |c| c.location == self.player}
    end

    def show_hand
        self.cards.each { |c| puts c.pic }
    end
end