//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jose Gomez on 5/16/22.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsdOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        //Add Add AddNumberOfPairsOfCards * 2 cards to card
        for pairIndex in 0..<numberOfPairsdOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content:  CardContent
    }
}
