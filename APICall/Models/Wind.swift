//
//  Wind.swift
//  APICall
//
//  Created by Abdullah Hafiz on 18/09/1446 AH.
//

import Foundation


/// Wind data
struct Wind: Codable {
    let speed: Double
    let deg: Int
    let gust: Double?
}
