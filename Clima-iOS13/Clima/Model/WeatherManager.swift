//
//  WeatherManager.swift
//  Clima
//
//  Created by Nestor Blanco on 1/17/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    
    func didFailWithError(error: Error)
    
}

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=1143ac8332acc1f41c8f75b502752d68&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        
        let urlString = "\(weatherURL)&q=\(cityName)"
        //        print(urlString)
        performRequest(width: urlString)
        
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longitute: CLLocationDegrees ) {
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitute)"
                print(urlString)
        performRequest(width: urlString)
    }
    
    func performRequest(width urlString: String) {
        
        //1.- Create URL
        
        if let url = URL(string: urlString) {
            //2.- Create URLSession
            
            let session = URLSession(configuration: .default)
            
            //3.- Give the session task
            
            //let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            let task = session.dataTask(with: url) { data, response, error in
                
                if error != nil {
                    
                    print(error!)
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    //let dataString = String(data: safeData, encoding: .utf8)
                    //print(dataString)
                    if let weather = self.parseJSON(safeData) {
                        
                        //Para evitar vincular a un objeto de usa un patron delegado
//                        let weatherVC = WeatherViewController()
//                        weatherVC.didUpdateWeater(weather: weather)
                        self.delegate?.didUpdateWeather(self, weather: weather)
                        
                    }
                }
                
                
            }
            
            //4.- Start The task
            task.resume()
        }
        
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        
        let decoder = JSONDecoder()
        do {
            
            let decodeData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodeData.name)
            print(decodeData.main.temp)
            print(decodeData.weather[0].description)
            print(decodeData.weather[0].id)
            print(decodeData.base)
            
            
            
            let id = decodeData.weather[0].id
            let temp = decodeData.main.temp
            let name = decodeData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            
//            let iconActual = weather.getConditionName(weatherId: decodeData.weather[0].id)
//
//            print(iconActual)
            print(weather.conditionName)
            print(weather.temperaturaString)
            return weather
            
        } catch {
            print(error)
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
}
