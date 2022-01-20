//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CurrencyManagerDelegate {
    
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel)
    func didFailWidthError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    let apiKey = "15172520-F80C-465D-8786-137FFCD75A8C"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    var delegate : CurrencyManagerDelegate?
    
    
    /// <#Description#>
    /// - Parameter currency: <#currency description#>
    func getCoinPrice(for idQuote: String) {
        
//        let idQuote = "USD"
        let urlString = "\(baseURL)\(idQuote)"
        print(urlString)
        
        perfomRequest(for: urlString)
    }
    
    
    /// <#Description#>
    /// - Parameter urlString: <#urlString description#>
    func perfomRequest(for urlString: String) {
        
        if let url = URL(string: urlString) {
            print(url)
            
//            let session = URLSession(configuration: .default)
            var urlRequest = URLRequest(url: url)
            urlRequest.setValue("\(apiKey)", forHTTPHeaderField: "X-CoinAPI-Key")
            
//            let task = session.dataTask(with: url) { data, response, error in
            let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in

                if error != nil {
                    
                    print(error!)
                    self.delegate?.didFailWidthError(error: error!)
                    return
                    
                }
                
                if let safeData = data {
                    if let coinPrice = self.parseJSON(safeData) {
                        print(coinPrice.rate)
                        self.delegate?.didUpdateCoin(self, coinModel: coinPrice)
                    }
                    
                }
                
            }
            
            task.resume()
            
        }
        
    }
    
    func parseJSON(_ coinData: Data) -> CoinModel? {
        
        let decoder = JSONDecoder()
        
        do {
            let decodeData = try decoder.decode(CoinData.self, from: coinData)
//            let time = decodeData.time
            let asset_id_base = decodeData.asset_id_base
            let asset_id_quote = decodeData.asset_id_quote
            let rate = decodeData.rate
            
            let coin = CoinModel(asset_id_base: asset_id_base, asset_id_quote: asset_id_quote, rate: rate)
            print(coin)
            return coin
        } catch {
            
            print(error)
            delegate?.didFailWidthError(error: error)
            return nil
            
        }
        
    }
    
    
}
