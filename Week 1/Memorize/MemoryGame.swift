//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jose Gomez on 5/16/22.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print("Chosencard: \(cards)")
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0
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
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content:  CardContent
        
        var id: Int
    }
}
