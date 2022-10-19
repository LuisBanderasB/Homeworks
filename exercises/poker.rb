class Card
  RANK_VALUES = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                  '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                  'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14}
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def rank_value
    RANK_VALUES[rank]
  end
end


class Hand
  def initialize(hand)
    @hand = hand
    sort()
    @suits = @hand.map { |card| card.suit }
    @ranks = @hand.map { |card| card.rank_value }
  end

  def print
    @hand.each do |card|
      puts "suit:#{card.suit} rank:#{card.rank_value}"
    end
  end

  def sort
    swap = true
    while swap
      swap = false
      (@hand.length - 1).times do |x|
        if @hand[x].rank_value > @hand[x+1].rank_value
          @hand[x], @hand[x+1] = @hand[x+1], @hand[x]
          swap = true
        end
      end
    end
    @hand
  end

  def getHandRank
    if isRoyalFlush?
      "Is Royal Flush"
    elsif isStraightFlush?
      "Is Straight Flush"
    elsif isFourOfAKind?
      "Is Four Of AKind"
    elsif isFullHouse?
      "Is Ful lHouse"
    elsif isFlush?
      "Is Flush"
    elsif isStraight?
      "Is Straight"
    elsif isThreeOfAKind?
      "Is Three Of A Kind"
    elsif isTwoPairs?
      "Is Two Pairs"
    elsif isPair?
      "Is Pair"
    else
      highCard
    end
  end

  def isRoyalFlush?
    rank_sum = @hand.inject(0){|sum, card| sum + card.rank_value}
    are_the_same = @suits.uniq.size <= 1

    rank_sum == 60 && are_the_same ? true : false
  end

  def isStraightFlush?
    ranks = @hand.map { |card| card.rank_value }
    is_sequential = ranks.each_cons(2).all? {|a, b| b == a + 1 }
    are_the_same_suit = @suits.uniq.size <= 1

    is_sequential && are_the_same_suit ? true : false
  end

  def isFourOfAKind?
    counts = Hash.new(0)
    @ranks.each { |rank| counts[rank] += 1 }

    return false unless counts.length == 2
    counts.has_value?(4) ? true : false
  end

  def isFullHouse?
    counts = Hash.new(0)
    @ranks.each { |rank| counts[rank] += 1 }

    return false unless counts.length == 2
    counts.has_value?(3) && counts.has_value?(2) ? true : false
  end

  def isFlush?
    are_the_same_suit = @suits.uniq.size <= 1
    are_the_same_suit ? true : false
  end

  def isStraight?
    has_more_than_one_suit = @suits.uniq.size > 1
    is_sequential = @ranks.each_cons(2).all? {|a, b| b == a + 1 }

    has_more_than_one_suit && is_sequential ? true : false
  end

  def isThreeOfAKind?
    counts = Hash.new(0)
    @ranks.each { |rank| counts[rank] += 1 }

    return false unless counts.length == 3
    counts.has_value?(3) ? true : false
  end

  def isTwoPairs?
    counts = Hash.new(0)
    @ranks.each { |rank| counts[rank] += 1 }
    isThreeSuits = counts.uniq.size == 3

    return false unless counts.length == 3
    counts.has_value?(2) && counts.has_value?(1) && isThreeSuits ? true : false
  end

  def isPair?
    counts = Hash.new(0)
    @ranks.each { |rank| counts[rank] += 1 }

    return false unless counts.length == 4
    counts.has_value?(2) ? true : false
  end

  def highCard
    @hand.last()
  end
end

hand = []
hand.push(Card.new('4', 'C'))
hand.push(Card.new('8', 'C'))
hand.push(Card.new('5', 'C'))
hand.push(Card.new('6', 'C'))
hand.push(Card.new('7', 'C'))

hnd = Hand.new(hand)
hnd.print
puts hnd.getHandRank
