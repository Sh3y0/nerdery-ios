//
//  Models.swift
//  WeatherApp
//
//  Created by Eliseo on 5/13/22.
//

import Foundation

struct WeatherModel: Codable {
    let timezone: String
    let current: CurrentWeather
}

struct CurrentWeather: Codable {
    let temp: Float
    let weather: [WeatherInfo]
    
}

struct WeatherInfo: Codable {
    let main: String
    let description: String
}
