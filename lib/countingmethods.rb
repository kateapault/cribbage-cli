require_relative '../config/environment'

module Counting

    def check_multiples(hand)
        ranks = hand.cards.map { |c| c.rank }
        counts = arr_count(ranks)
        points = 0
        counts.each do |rank,count|
            case count
            when 2
                points += 2
            when 3
                points += 6
            when 4
                points += 12
            end  
        end
        points
    end

    def check_suits(hand)
        suits = hand.cards.map { |c| c.suit }
        counts = arr_count(suits)
        points = 0
        counts.each do |suit,count|
            if hand.category == "hand" && count >= 4
                points = count
            elsif hand.category == "crib" && count == 5
                points = 5
            end
        end
        points
    end

    def check_runs(hand)
    end

    def check_15s(hand)
    end

end