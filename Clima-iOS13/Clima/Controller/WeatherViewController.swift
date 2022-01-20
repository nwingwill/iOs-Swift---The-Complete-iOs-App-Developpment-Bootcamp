//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

//MARK: - WeatherViewController

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var currentLocationBtn: UIButton!
    
    var weatherManager = WeatherManager()
    let locationaManger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationaManger.delegate = self
        locationaManger.requestWhenInUseAuthorization()
        locationaManger.requestLocation()
        
        weatherManager.delegate = self
        searchTextField.delegate = self
        
        currentLocationBtn.tintColor = .blue
    }
}

//MARK: - UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate {
    
    @IBAction func searchPressed(_ sender: UIButton) {
        
        searchTextField.endEditing(true)
        
        print(searchTextField.text ?? "")
        
    }
    
    /// Permite utilizar la  tecla Go del teclado para ejecutar una accion
    /// - Parameter textField: Texto ingresado por el usuario
    /// - Returns: true indica que la tecla fue presionada
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "")
        return true
    }
    
    
    /// Ideal para validar los datos ingresados por el usuario
    /// - Parameter textField: Texto ingresado por el usuario
    /// - Returns: Validacion de datos
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
        
    }
    
    /// Permite limpiar el campo de texto y utilizar el Textfield para ejecutar alguna accion
    /// - Parameter textField: Texto ingresado por el usuario
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        //  Usar textfield para obtener el clima de alguna ciudad
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
            currentLocationBtn.tintColor = .black
        }
        searchTextField.text = ""
        
    }
}

//MARK: - WeatherManagerDelegate

extension WeatherViewController: WeatherManagerDelegate {
    
    
    /// Permite Actualizar la vista
    /// - Parameters:
    ///   - weatherManager: Accede al administrador de clima
    ///   - weather: obtiene los datos del clima
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)  {
        
        //        print(weather.temperature)
        //        print(weather.temperaturaString)
        
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperaturaString
            self.cityLabel.text = weather.cityName
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
        }
        
    }
    
    
    /// <#Description#>
    /// - Parameter error: <#error description#>
    func didFailWithError(error: Error) {
        print(error)
    }
    
    
}

//MARK: - CLLocationManagerDelegate

extension WeatherViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print("Got location Data")
        if let location = locations.last {
            locationaManger.stopUpdatingHeading()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print("Latitud: \(lat) - Longitud: \(lon)")
            weatherManager.fetchWeather(latitude: lat, longitute: lon)
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print(error)
        
    }
    
    @IBAction func currentLocationAction(_ sender: Any) {
        
        locationaManger.requestLocation()
        currentLocationBtn.tintColor = .blue
        
    }
    
}




