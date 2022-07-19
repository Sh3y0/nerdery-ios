//
//  Cardify.swift
//  Memorize
//
//  Created by Eliseo on 7/12/22.
//

import SwiftUI

struct Cardify:  ViewModifier {
    let isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadious)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    .foregroundColor(.red)
                content
            } else {
                shape
                    .fill()
                    .foregroundColor(.red)
            }
        }
    }
    
    private struct DrawingConstants {
        static let cornerRadious: CGFloat = 10
        static let lineWidth: CGFloat = 3
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
