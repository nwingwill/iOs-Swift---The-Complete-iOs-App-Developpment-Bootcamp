//
//  WeatherData.swift
//  Clima
//
//  Created by Nestor Blanco on 1/18/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable { //Codable combina los dos protocolos "Decodable & Codable"
    
    let coord: Coord
    let weather: [Weather] //Json dentro de JSon manera de obtener estos datos
    let base: String
    let main: Main
    let visibility: Int
//    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name : String
    let cod: Int
    
}


struct Main: Codable {
    
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
}

struct Coord: Codable {
    
    let lon: Double
    let lat: Double
    
}

struct Weather: Codable {
    
    let id: Int
    let main: String
    let description: String
    let icon: String
    
}

struct Wind: Codable {
    
    let speed: Int
    let deg: Int
    
}

struct Clouds: Codable {
    
    let all: Int
    
}

struct Sys: Codable {
    
//    let type: Int
//    let id: Int
//    let country: String
//    let sunrise: Int
//    let sunset: Int
    
}


