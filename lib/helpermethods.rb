
def main_menu
    require_relative './ascii/card.rb'
    prompt = TTY::Prompt.new

    Card.all.each do |card|
        s = card.suit
        n2 = " "
        n3 = " "
        case card.rank
        when "king"
            n1 = "K"
            n4 = "K"
        when "queen"
            n1 = "Q"
            n4 = "Q"
        when "jack"
            n1 = "J"
            n4 = "J"
        when "ten"
            n1 = "1"
            n2 = "0"
            n3 = "1"
            n4 = "0"
        else
            n1 = card.value.to_s
            n4 = card.value.to_s
        end
        card.pic = small_card(n1,n2,n3,n4,s)
        card.save
    end
end

def start_game
    deck = Deck.new
    deck.reshuffle 
    
    player = "Player 1"
    computer = "Computer"

    player1_hand = Hand.new(player,"hand")
    player2_hand = Hand.new(computer,"hand")
    crib = Hand.new("Crib","crib")
    # binding.pry
    deck.deal(player1_hand,player2_hand)
    
    [player1_hand, player2_hand, crib, deck]
end

def round(crib_hand,off_hand,crib)
    #round starts off with crib already filled
    crib.player = crib_hand.player

    # draw card
    drawn_card = deck.draw
    
    # pegging

    # non crib player counts

    # crib player counts hand

    # crib player counts crib

end

def choose_crib_cards_computer(hand) # add difficulty, whose crib it is
    # starting off easy, just gonna pick 2 random ones
    2.times do
        hand.cards[rand(hand.cards.size)].location = "Crib"
    end
end

def choose_crib_cards_human(hand)
    prompt = TTY::Prompt.new

    2.times do
        crib_card = prompt.select do |menu|
            hand.cards.each do |card|
                menu.choice card.pic, card
            end
        end
        crib_card.location = "Crib"
        crib_card.save
    end
end



def pegging(hand1,hand2)

end


def arr_count(arr)
    #takes in arr, returns hash with vals and counts
    counts = {}
    arr.each do |a|
        if counts[a]
            counts[a] += 1
        else
            counts[a] = 1
        end
    end
    counts
end