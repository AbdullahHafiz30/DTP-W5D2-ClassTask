//
//  GeocodingModel.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import Foundation

struct GeocodingModel: Codable {
    let name: String
    let lat: Double
    let lon: Double
    let country: String
    let state: String?
}
