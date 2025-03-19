//
//  ForecastView.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import SwiftUI

struct ForecastView: View {
    @StateObject var locationManager = LocationManager()
    @StateObject var forecastViewModel = ForecastViewModel()
    
    var body: some View {
        ScrollView (.horizontal){
            HStack{
            
            
            if let forecastData = forecastViewModel.forecastData {
                ForEach(forecastData.list, id: \.dt) { forecast in
                    ForecastViewCard(forecastData: forecast)
                }
            } else {
                LoadingView()
                    .task {
                        await forecastViewModel.fetchForecast(latitude: 11, longitude: 1)
                    }
            }
        }
        .padding()
        }
    }
}

#Preview {
    ForecastView()
}
