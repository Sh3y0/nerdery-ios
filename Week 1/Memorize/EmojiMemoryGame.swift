//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jose Gomez on 5/16/22.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis:[String] = ["🚲", "🚂", "🚁", "🚜", "🏎", "🚑", "🚓", "🚒", "🛴", "🚎", "🛻", "🚤", "⛵️", "🦽", "🛸", "🚃", "🛶", "🚛", "🛺", "🦼", "🛩", "🚕", "🚢", "🚡"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsdOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
