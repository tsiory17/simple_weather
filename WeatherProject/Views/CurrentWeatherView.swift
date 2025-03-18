//
//  CurrentWeatherView.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import SwiftUI

struct CurrentWeatherView: View {
    let weatherData : WeatherModel

    var body: some View {
        
        VStack(spacing: 20){
            Text("Location: \(weatherData.name)")
            HStack (alignment: .center){
                VStack() {
                    AsyncImage(url: URL(string: "https://openweathermap.org/img/wn/\(weatherData.weather.first?.icon ?? "")@2x.png"))

                  Text(weatherData.weather.first?.description.capitalized ?? "No description available")
                }
                VStack(){
                    Text("Temperature: \(weatherData.main.temp, specifier: "%.1f") C")
                    Text("Feels like: \(weatherData.main.feels_like, specifier: "%.1f") C")
                    
                    HStack{
                        Text("min: \(weatherData.main.temp_min, specifier: "%.1f") C")
                        Text("max: \(weatherData.main.temp_max, specifier: "%.1f") C")
                    }
                }.multilineTextAlignment(.center)
            }.padding()
            HStack{
                Text("Pressure: \(weatherData.main.pressure)")
                Text("Humidity: \(weatherData.main.humidity)")
            }
            
        }

    }
}

#Preview {
    CurrentWeatherView(weatherData: WeatherModel(
        coord: Coord(lon: -73.6235, lat: 45.4807),
        weather: [Weather(id: 800, main: "Clear", description: "clear sky", icon: "01d")],
        base: "stations",
        main: Main(temp: 1.48, feels_like: -0.13, temp_min: 0.24, temp_max: 2.88, pressure: 1020, humidity: 52, sea_level: 1020, grnd_level: 1017),
        visibility: 10000,
        wind: Wind(speed: 1.54, deg: 150),
        clouds: Clouds(all: 0),
        dt: 1742308304,
        sys: Sys(type: 1, id: 498, country: "CA", sunrise: 1742295660, sunset: 1742339038),
        timezone: -14400,
        id: 6077243,
        name: "Montreal",
        cod: 200
    ))
}

//{"coord":{"lon":-73.6235,"lat":45.4807},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"base":"stations","main":{"temp":1.48,"feels_like":-0.13,"temp_min":0.24,"temp_max":2.88,"pressure":1020,"humidity":52,"sea_level":1020,"grnd_level":1017},"visibility":10000,"wind":{"speed":1.54,"deg":150},"clouds":{"all":0},"dt":1742308304,"sys":{"type":1,"id":498,"country":"CA","sunrise":1742295660,"sunset":1742339038},"timezone":-14400,"id":6077243,"name":"Montreal","cod":200}
 
