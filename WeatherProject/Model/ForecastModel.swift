//
//  ForecastModel.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-18.
//

import Foundation

// MARK: - Welcome
struct ForecastModel: Codable {
    let cod: String
    let message, cnt: Int
    let list: [List]
    let city: City
}

// MARK: - City
struct City: Codable {
    let id: Int
    let name: String
    let coord: CoordForecast
    let country: String
    let population, timezone, sunrise, sunset: Int
}

// MARK: - Coord
struct CoordForecast: Codable {
    let lat, lon: Double
}

// MARK: - List
struct List: Codable {
    let dt: Int
    let main: MainClass
    let weather: [WeatherForecast]
    let clouds: CloudsForecast
    let wind: WindForecast
    let visibility: Int
    let pop: Double
    let sys: SysForecast
    let dtTxt: String
   

    enum CodingKeys: String, CodingKey {
        case dt, main, weather, clouds, wind, visibility, pop, sys
        case dtTxt = "dt_txt"
//        case rain
    }
}

// MARK: - Clouds
struct CloudsForecast: Codable {
    let all: Int
}

// MARK: - MainClass
struct MainClass: Codable {
    let temp, feels_like, temp_min, temp_max: Double
    let pressure, sea_level, grnd_level, humidity: Int
    let tempKf: Double

    enum CodingKeys: String, CodingKey {
        case temp
        case feels_like = "feels_like"
        case temp_min = "temp_min"
        case temp_max = "temp_max"
        case pressure
        case sea_level = "sea_level"
        case grnd_level = "grnd_level"
        case humidity
        case tempKf = "temp_kf"
    }
}

// MARK: - Rain
//struct Rain: Codable {
//    let the3H: Double
//
//    enum CodingKeys: String, CodingKey {
//        case the3H = "3h"
//    }
//}

// MARK: - Sys
struct SysForecast: Codable {
    let pod: Pod
}

enum Pod: String, Codable {
    case d = "d"
    case n = "n"
}

// MARK: - Weather
struct WeatherForecast: Codable {
    let id: Int
    let main: MainEnum
    let description: Description
    let icon: String
}
enum Description: String, Codable {
    case brokenClouds = "broken clouds"
    case clearSky = "clear sky"
    case lightRain = "light rain"
    case moderateRain = "moderate rain"
    case overcastClouds = "overcast clouds"
    case scatteredClouds = "scattered clouds"
    case heavyRain = "heavy rain"
    case snow = "Snow"
    case unknown = "unknown"  // Default case for unknown values

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let description = try container.decode(String.self)
        self = Description(rawValue: description) ?? .unknown
    }
}


enum MainEnum: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
    case snow = "Snow"
    case unknown = "unknown"
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let main = try container.decode(String.self)
        self = MainEnum(rawValue: main) ?? .unknown
    }
}

// MARK: - Wind
struct WindForecast: Codable {
    let speed: Double
    let deg: Int
    let gust: Double
}





