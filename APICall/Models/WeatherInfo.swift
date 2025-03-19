//
//  WeatherInfo.swift
//  APICall
//
//  Created by Abdullah Hafiz on 18/09/1446 AH.
//

import Foundation

/// Weather info array
struct WeatherInfo: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}
