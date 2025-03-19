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
