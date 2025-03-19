//
//  ForecastViewModel.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import Foundation
class ForecastViewModel: ObservableObject {
    
    @Published var forecastData: ForecastModel?
    var apiService = ApiService()

    func fetchForecast(latitude: Double, longitude: Double) async {
        do {
            let data = try await apiService.getForecast(latitude: latitude, longitude: longitude)
            DispatchQueue.main.async {
                self.forecastData = data
            }
        } catch {
            print("Error fetching weather: \(error)")
        }
    }
    
    
}

