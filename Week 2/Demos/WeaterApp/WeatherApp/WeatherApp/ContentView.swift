//
//  ContentView.swift
//  WeatherApp
//
//  Created by Eliseo on 5/13/22.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = WeatherViewModel()
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.system(size: 32))
            Text(viewModel.descriptionText)
                .font(.system(size: 44))
            Text(viewModel.temp)
                .font(.system(size: 24))
            Text(viewModel.descriptionText)
                .font(.system(size: 24))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
