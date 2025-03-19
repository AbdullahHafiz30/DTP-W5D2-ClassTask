//
//  WeatherViewModel.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import SwiftUI

/// A view model that fetches current weather data for a given city
class WeatherViewModel: ObservableObject {
    
    @Published var currentWeather: CurrentWeatherResponse?
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    // Replace with your actual OpenWeather API key
    private let apiKey = "5a68d7032ed76ee48d749e12dd858ad0"
    
    /// A computed property so ContentView can display just the temp in °C
    var currentTemp: Double? {
        currentWeather?.main.temp
    }
    
    var cityName: String? {
        currentWeather?.name
    }
    
    var feelsLike: Double? {
        currentWeather?.main.feels_like
    }
    
    /// Fetches the current weather from the "api.openweathermap.org/data/2.5/weather"
    /// endpoint, given a city name (in °C).
    func fetchWeatherForCity(_ city: String) {
        isLoading = true
        errorMessage = nil
        
        // Build the URL
        let baseURL = "put your api here -_-" // I removed my key for security reasons
        
        // changes to test github local repo 
        
        guard
            let encodedCity = city.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
            let url = URL(string: "\(baseURL)?q=\(encodedCity)&units=metric&appid=\(apiKey)")
        else {
            DispatchQueue.main.async {
                self.errorMessage = "Invalid city name or URL."
                self.isLoading = false
            }
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }
            
            defer {
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }
            
            if let error = error {
                DispatchQueue.main.async {
                    self.errorMessage = "Network error: \(error.localizedDescription)"
                }
                return
            }
            
            // Debug prints
            if let httpResponse = response as? HTTPURLResponse {
                print("Status code:", httpResponse.statusCode)
            }
            if let data = data {
                print("Response body:", String(data: data, encoding: .utf8) ?? "N/A")
            }
            
            // Validate data & 200 OK
            guard
                let httpResponse = response as? HTTPURLResponse,
                httpResponse.statusCode == 200,
                let data = data
            else {
                DispatchQueue.main.async {
                    self.errorMessage = "Invalid response."
                }
                return
            }
            
            // Decode JSON
            do {
                let decodedResponse = try JSONDecoder().decode(CurrentWeatherResponse.self, from: data)
                DispatchQueue.main.async {
                    self.currentWeather = decodedResponse
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = "Decoding error: \(error.localizedDescription)"
                }
            }
        }.resume()
    }
}
