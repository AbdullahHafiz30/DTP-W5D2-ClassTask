# APICall

APICall is a SwiftUI project that demonstrates how to make API calls to the OpenWeather API to fetch current weather data for a user-specified city. It features custom UI components such as a custom text field and button, as well as dynamic background images that change based on the temperature.

## Features

- **Current Weather Data:** Retrieves current weather conditions from OpenWeather’s `/data/2.5/weather` endpoint.
- **Custom UI Components:** Uses a custom text field and button for a polished user interface.
- **Dynamic Background:** Changes the background image according to temperature ranges (cold, mild, hot).
- **Learning-Oriented:** The project is designed to help you understand making network requests and decoding JSON in SwiftUI.

## Requirements

- **Xcode 12 or later**
- **iOS 14 or later**
- **A valid OpenWeather API key** – Sign up for a free key at [OpenWeather](https://openweathermap.org/api).

## Installation

1. **Clone or download** this repository.
2. **Open the project** in Xcode.
3. **Insert your API key:**  
   In `WeatherViewModel.swift`, replace `"YOUR_API_KEY"` with your actual OpenWeather API key.
4. **Add Background Images:**  
   Make sure your Assets catalog contains the following images:
   - `defaultBackground`
   - `coldBackground`
   - `mildBackground`
   - `hotBackground`
5. **Build and Run** the project on your simulator or device.

## Usage

1. **Launch the app.**
2. **Enter a city name** into the custom text field.
3. **Tap the "Search" button** to fetch the weather data.
4. The app will display:
   - The current temperature (in °C).
   - A background image that adjusts based on the temperature.
   - Any error messages if the request fails.
5. Use this project as a starting point to explore further enhancements.

## Code Structure

- **ContentView.swift:**  
  The main SwiftUI view that sets up the user interface, including the dynamic background and display of weather information.

- **WeatherViewModel.swift:**  
  Contains the logic for making API calls with `URLSession`, decoding JSON data, and managing application state with `@Published` properties.

- **CurrentWeatherResponse.swift:**  
  Defines the models used to decode the JSON response from the OpenWeather API.

- **CustomTF.swift:**  
  A custom text field view for entering the city name.

- **CustomButton.swift:**  
  A custom button view for initiating the API call.

- **GeocodingModel.swift:**  
  *(Optional)* A model for geocoding results (included for reference if you later decide to convert city names to coordinates).

## License

This project is provided for **learning purposes only**. It is intended as a starting point for learning about API calls and SwiftUI development. Use it as you wish, but no warranty is provided.

## Acknowledgments

- [OpenWeather](https://openweathermap.org/) for providing a great weather API.
- SwiftUI documentation and community tutorials for guidance and inspiration.
