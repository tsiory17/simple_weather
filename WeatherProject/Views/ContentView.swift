//
//  ContentView.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-17.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @StateObject var weatherViewModel = WeatherViewModel()
    
    var body: some View {
        
        ZStack {
            VStack {
                if let location = locationManager.location {
                    Text("4CAST").font(.largeTitle).fontWeight(.bold)
                    Text("\(location.latitude), \(location.longitude)")
                    
                    if let weatherData = weatherViewModel.weatherData {
                        //                    Text("Weather: \(weatherData.main.temp)°C") 
                        CurrentWeatherView(weatherData: weatherData)
                        ForecastView()
                    } else {
                        LoadingView()
                            .task {
                                await weatherViewModel.fetchWeather(latitude: location.latitude, longitude: location.longitude)
                            }
                    }
                } else {
                    if locationManager.isLoading {
                        LoadingView()
                    } else {
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
            }
            .padding()
            Spacer()
        }.background(Color.blue.opacity(0.1))
    }
}


#Preview {
    ContentView()
}
