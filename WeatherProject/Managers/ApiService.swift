//
//  ApiService.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-17.
//

import Foundation
import CoreLocation

class ApiService {
    //Weather Current
    
    func getCurrentWeather (latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> WeatherModel{
        guard let url = URL (string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&units=metric&appid=d6c98d7fd5c0cd2de7db26b9971bcc58")else {
            fatalError ("Invalid URL")
        }
        
        let urlRequest = URLRequest (url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            fatalError ("Failed to fetch data")
        }
        
        let decodedData = try JSONDecoder().decode(WeatherModel.self, from: data)
        
        return decodedData
    }
    
    func getCity (){
        
    }
}
