//
//  Sys.swift
//  APICall
//
//  Created by Abdullah Hafiz on 18/09/1446 AH.
//

import Foundation

/// Sys info about sunrise/sunset etc.
struct Sys: Codable {
    let type: Int?
    let id: Int?
    let country: String
    let sunrise: Int
    let sunset: Int
}
