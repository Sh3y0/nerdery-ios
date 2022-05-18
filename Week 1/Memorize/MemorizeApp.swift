//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Eliseo on 5/4/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
