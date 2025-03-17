//
//  WeatherModel.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import Foundation

/// A model representing the JSON structure of current weather data
/// from the OpenWeather /data/2.5/weather endpoint.
struct CurrentWeatherResponse: Codable {
    let coord: Coord
    let weather: [WeatherInfo]
    let base: String?
    let main: MainInfo
    let visibility: Int?
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
}

/// Coordinates
struct Coord: Codable {
    let lon: Double
    let lat: Double
}

/// Weather info array
struct WeatherInfo: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

/// Main temperature/humidity/pressure info
struct MainInfo: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
    let sea_level: Int?
    let grnd_level: Int?
}

/// Wind data
struct Wind: Codable {
    let speed: Double
    let deg: Int
    let gust: Double?
}

/// Cloud coverage
struct Clouds: Codable {
    let all: Int
}

/// Sys info about sunrise/sunset etc.
struct Sys: Codable {
    let type: Int?
    let id: Int?
    let country: String
    let sunrise: Int
    let sunset: Int
}
