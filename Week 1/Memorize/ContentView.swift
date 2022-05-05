//
//  ContentView.swift
//  Memorize
//
//  Created by Eliseo on 5/4/22.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["🚲", "🚂", "🚁", "🚜", "🏎", "🚑", "🚓", "🚒"]
    
    @State var emojisCount = 6
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojisCount], id: \.self, content: {emoji in
                    CardView(content: emoji)
                })
            }
            HStack{
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var remove: some View {
        Button(action: {
            emojisCount += 1
        }, label: {
            VStack {
                Text("Add")
                Text("Card")
            }
        })
    }
    
    var add: some View {
        Button(action: {
            emojisCount -= 1
        }, label: {
            VStack{
                Text("Remove")
                Text("Card")
            }
        })
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
