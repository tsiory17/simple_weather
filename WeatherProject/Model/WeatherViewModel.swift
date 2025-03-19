//
//  WeatherViewModel.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var weatherData: WeatherModel?
    private var apiService = ApiService()

    func fetchWeather(latitude: Double, longitude: Double) async {
        do {
            let data = try await apiService.getCurrentWeather(latitude: latitude, longitude: longitude)
            DispatchQueue.main.async {
                self.weatherData = data
            }
        } catch {
            print("Error fetching weather: \(error)")
        }
    }
    
    
}
