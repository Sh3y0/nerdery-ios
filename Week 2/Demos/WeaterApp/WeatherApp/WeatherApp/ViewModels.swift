//
//  ViewModels.swift
//  WeatherApp
//
//  Created by Eliseo on 5/13/22.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var title: String = "-"
    @Published var descriptionText: String = "-"
    @Published var temp: String = "-"
    @Published var timezone: String = "-"
    
    init() {
        print("Inicializacion de aplicacion")
        fetchWeather()
    }
    
    func fetchWeather() {
        print("Iniciando FetchData")
        guard let url = URL(string:
                            "https://api.openweathermap.org/data/2.5/onecall?exclude=hourly,daily,minutely&lat=40.7128&lon=-74&units=imperial&appid=a25ffc3abde70c25f3d7f331151a9e3f") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do  {
                let model =  try JSONDecoder().decode(WeatherModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.title = model.current.weather.first?.main ?? "No Title"
                    self.descriptionText = model.current.weather.first?.description ?? "No Description"
                    self.temp = "\(model.current.temp)°"
                    self.timezone = model.timezone
                }
            } catch {
                 print("failed")
            }
        }
        task.resume()
    }
}

