//
//  WelcomeView.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-17.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager:
    LocationManager
    var body: some View {
        VStack{
            
            Text("Weather App")
            Text("Please allow location access for accurate weather data")
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
