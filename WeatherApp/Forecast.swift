//
//  Forecast.swift
//  WeatherApp
//
//  Created by Abraham Barcenas M on 1/18/17.
//  Copyright © 2017 barcennas. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    private var _date : String!
    private var _weatherType : String!
    private var _highTemp : String!
    private var _lowTemp : String!
    
    var date : String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType : String {
        if _weatherType == nil {
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp : String {
        if _highTemp == nil{
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp : String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict : Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject>{
            if let min = temp["min"] as? Double {
                let kelvinToCelcius = min-273.15
                let roundedToOneDecimal = String(format: "%.1f", kelvinToCelcius)
                self._lowTemp = roundedToOneDecimal
            }
            
            if let max = temp["max"] as? Double {
                let kelvinToCelcius = max-273.15
                let roundedToOneDecimal = String(format: "%.1f", kelvinToCelcius)
                self._highTemp = roundedToOneDecimal
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>]{
            if let main = weather[0]["main"] as? String{
                self._weatherType = main.capitalized
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            self._date = unixConvertedDate.dayOfTheWeek()
            print(self.date)

        }
        
    }
    
}


extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
