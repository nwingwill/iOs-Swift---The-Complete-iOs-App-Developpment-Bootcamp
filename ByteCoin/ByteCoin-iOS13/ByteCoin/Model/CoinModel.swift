//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Nestor Blanco on 1/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
//    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
    
    var rateString: String {
        return String(format: "%.2f", rate)
    }
    
    
}
