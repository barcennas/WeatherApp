//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Abraham Barcenas M on 1/19/17.
//  Copyright © 2017 barcennas. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    
    @IBOutlet var weatherIcon: UIImageView!
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var weatherTypeLabel: UILabel!
    @IBOutlet var highTempLabel: UILabel!
    @IBOutlet var lowTempLabel: UILabel!
    
    func configureCell(forecast : Forecast){
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        highTempLabel.text = forecast.highTemp+"ºC"
        lowTempLabel.text = forecast.lowTemp+"ºC"
    }


}
