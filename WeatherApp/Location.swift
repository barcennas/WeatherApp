//
//  Location.swift
//  WeatherApp
//
//  Created by Abraham Barcenas M on 1/19/17.
//  Copyright © 2017 barcennas. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init(){}
    
    var latitude : Double!
    var longitude : Double!
}
