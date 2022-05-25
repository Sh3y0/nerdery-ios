//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jose Gomez on 5/16/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    static let emojis:[String] = ["🚲", "🚂", "🚁", "🚜", "🏎", "🚑", "🚓", "🚒", "🛴", "🚎", "🛻", "🚤", "⛵️", "🦽", "🛸", "🚃", "🛶", "🚛", "🛺", "🦼", "🛩", "🚕", "🚢", "🚡"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsdOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
}
