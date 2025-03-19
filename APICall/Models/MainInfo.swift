//
//  MainInfo.swift
//  APICall
//
//  Created by Abdullah Hafiz on 18/09/1446 AH.
//

import Foundation

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
