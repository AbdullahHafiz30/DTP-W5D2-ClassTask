//
//  ContentView.swift
//  APICall
//
//  Created by Abdullah Hafiz on 17/09/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WeatherViewModel()
    @State private var cityName = ""
    
    var body: some View {
        ZStack {
            // 1) Background image that changes based on temperature
            backgroundImage
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            // 2) Main content
            VStack(spacing: 20) {
                
                // Custom text field for city name
                CustomTF(placeholder: "Enter city name", text: $cityName)
                    .padding()
                
                // Custom button to fetch weather
                CustomButton(title: "Search") {
                    // Updated call: fetches from the current weather endpoint
                    viewModel.fetchWeatherForCity(cityName)
                }
                
                // Loading and error states
                if viewModel.isLoading {
                    Text("Loading...")
                        .foregroundColor(.white)
                } else if let error = viewModel.errorMessage {
                    Text("Error: \(error)")
                        .foregroundColor(.red)
                }
                // Display the temperature if we have it
                else if let temp = viewModel.currentTemp {
                    Text("Current temperature: \(String(format: "%.1f", temp)) °C")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                // Fallback if no data loaded yet
                else {
                    Text("No data yet.")
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
            .padding(.top, 80)
        }
        .navigationBarHidden(true)
    }
    
    // MARK: - Background Image Logic
    private var backgroundImage: Image {
        // If we don't have a temperature, return the default image
        guard let temp = viewModel.currentTemp else {
            return Image("defaultBackground")
        }
        
        switch temp {
        case ..<0:
            return Image("coldBackground")
        case 0..<20:
            return Image("mildBackground")
        default:
            return Image("hotBackground")
        }
    }
}

// Optional SwiftUI Preview
#Preview {
    ContentView()
}
