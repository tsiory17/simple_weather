//
//  ForecastViewCard.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import SwiftUI

struct ForecastViewCard: View {
    let forecastData: List
    
    func getDayOfWeek(_ dateString: String) -> String? {
           let inputFormatter = DateFormatter()
           inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
           inputFormatter.locale = Locale(identifier: "en_US_POSIX")

           if let date = inputFormatter.date(from: dateString) {
               let outputFormatter = DateFormatter()
               outputFormatter.dateFormat = "EEEE" // Full day name (e.g., Monday, Tuesday)
               return outputFormatter.string(from: date)
           }
           
           return nil
       }

       // Computed property to determine background color based on the day
       var backgroundColor: Color {
           switch getDayOfWeek(forecastData.dtTxt) {
           case "Monday": return .blue
           case "Tuesday": return .green
           case "Wednesday": return .purple
           case "Thursday": return .orange
           case "Friday": return .red
           case "Saturday": return .yellow
           case "Sunday": return .pink
           default: return .gray
           }
       }
       
    var body: some View {
         VStack(){
            
            HStack (alignment: .center){
                VStack(spacing:5) {
                    if let day = getDayOfWeek(forecastData.dtTxt) {
                                              Text("\(day), \(forecastData.dtTxt.prefix(13))h") // Extracts "YYYY-MM-DD HH"
                    } else {
                      Text("Unknown Date")
                    }
                    AsyncImage(url: URL(string: "https://openweathermap.org/img/wn/\(forecastData.weather.first?.icon ?? "")@2x.png")).frame(width: 10, height:60)
                   
                    Text( "\(forecastData.weather[0].description)")
                    
                    VStack(spacing: 10){
                        Text("Temperature: \(forecastData.main.temp,specifier: "%.1f") C").font(.system(size: 17, weight: .semibold, design: .default))
                        
                        HStack(spacing:20){
                            HStack(spacing:3){
                                Image(systemName: "arrowshape.down.fill").foregroundStyle(.red)
                                Text("min: ")
                                Text("\(forecastData.main.temp_min, specifier: "%.1f") C")
                            }
                            
                            HStack(spacing:3){
                                Image(systemName: "arrowshape.up.fill").foregroundStyle(.green)
                                Text("max: \(forecastData.main.temp_max, specifier: "%.1f") C")
                            }
                           
                            
                        }
                        
                    }.multilineTextAlignment(.center)
                }
              
            }.padding()
            
        }.frame(width: 280, height: 200)
            .background(backgroundColor.opacity(0.2)) // Apply dynamic background color
            .cornerRadius(20)
    }
    
    
    func formatDate(_ dateString: String) -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // Format from API
        inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing
        
        if let date = inputFormatter.date(from: dateString) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "E HH'h'" // "E" for short weekday name, "HH" for hours
            return outputFormatter.string(from: date)
        }
        
        return dateString // Return original if parsing fails
    }

}

#Preview {
    ForecastViewCard(forecastData: List(
        dt: 1234567890,
        main: MainClass(
            temp: 20.0,
            feels_like: 18.0,
            temp_min: 15.0,
            temp_max: 25.0,
            pressure: 1013,
            sea_level: 1015,
            grnd_level: 1012,
            humidity: 80,
            tempKf: 0
        ),
        weather: [
            WeatherForecast(
                id: 1,
                main: .clear,
                description: .clearSky,
                icon: "01d"
            )
        ],
        clouds: CloudsForecast(all: 0),
        wind: WindForecast(
            speed: 5.0,
            deg: 90,
            gust: 0.0
        ),
        visibility: 10000,
        pop: 0.1,
        sys: SysForecast(pod: .n), // Enum case for pod
        dtTxt: "2025-03-18 12:00:00"
    ))
}
