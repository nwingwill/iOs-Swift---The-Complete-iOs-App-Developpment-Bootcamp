//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, CurrencyManagerDelegate {
    
    
    

    @IBOutlet weak var bitcoinLabel: UIStackView!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    @IBOutlet weak var rateLabel: UILabel!
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        coinManager.delegate = self
        
        self.coinManager.getCoinPrice(for: "USD")
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        coinManager.currencyArray[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
        print(coinManager.currencyArray[row])
        
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency)
        DispatchQueue.main.async {
            self.coinManager.getCoinPrice(for: selectedCurrency)
            
        }
        
    }
    
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel) {
        print("Work")
        DispatchQueue.main.async {
            self.currencyLabel.text = coinModel.asset_id_quote
            self.rateLabel.text = coinModel.rateString
        }

    }
    
    func didFailWidthError(error: Error) {
        print(error)
    }

}

