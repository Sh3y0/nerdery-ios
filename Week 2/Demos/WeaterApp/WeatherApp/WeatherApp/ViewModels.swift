//
//  ViewModels.swift
//  WeatherApp
//
//  Created by Eliseo on 5/13/22.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var title: String = ""
    @Published var descriptionText: String = ""
    @Published var temp: String = ""
    @Published var timezone: String = ""
}
