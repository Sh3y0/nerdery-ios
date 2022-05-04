//
//  ContentView.swift
//  Memorize
//
//  Created by Eliseo on 5/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "✈️")
            CardView(content: "🚀")
            CardView(content: "🚁")
            CardView(content: "🚂")
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        return ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: 3)
                    .foregroundColor(.red)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape
                    .fill()
                    .foregroundColor(.red)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}
