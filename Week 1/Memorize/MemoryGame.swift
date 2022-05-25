//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jose Gomez on 5/16/22.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    private var IndexOfTheOneAndOnlyFaceUpCard: Int?
    
    mutating func choose(_ card: Card) {
        //if let chosenIndex = index(of: card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMatched
        {
            if let PotentialMatchIndex = IndexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[PotentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[PotentialMatchIndex].isMatched = true
                }
                IndexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                IndexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
        print("Chosencard: \(cards)")
    }
    
    init(numberOfPairsdOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        //Add Add AddNumberOfPairsOfCards * 2 cards to card
        for pairIndex in 0..<numberOfPairsdOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content:  CardContent
        
        var id: Int
    }
}
