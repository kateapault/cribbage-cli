class Hand
    attr_accessor :player, :category

    def initialize(player,category)
        @player = player
        @category = category
    end

    def cards
        Card.all.reload.select { |c| c.location == self.player}
    end

    def show_hand
        self.cards.each { |c| print c.pic }
    end
end