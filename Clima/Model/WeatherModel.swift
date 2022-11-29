//
//  WeatherModel.swift
//  Clima
//
//  Created by Philipp Edrich on 28.11.22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", locale: .current, temperature)
    }
    
    var conditionName: String {
        var iconName = ""
        switch conditionId {
        case 200 ..< 210:
            iconName = "cloud.bolt.rain"
        case 210 ... 221:
            iconName = "cloud.bolt"
        case 222 ... 232:
            iconName = "cloud.bolt.rain"
        case 300 ... 321:
            iconName = "cloud.drizzle"
        case 500 ... 501:
            iconName = "cloud.rain"
        case 502 ... 504:
            iconName = "cloud.heavyrain"
        case 511:
            iconName = "cloud.sleet"
        case 520 ... 531:
            iconName = "cloud.sun.rain"
        case 600 ... 602:
            iconName = "cloud.snow"
        case 611 ... 615:
            iconName = "cloud.sleet"
        case 616 ... 622:
            iconName = "cloud.snow"
        case 700 ... 720:
            iconName = "cloud.fog"
        case 721:
            iconName = "haze"
        case 722 ... 760:
            iconName = "cloud.fog"
        case 761 ... 762:
            iconName = "sun.dust"
        case 771:
            iconName = "wind"
        case 781:
            iconName = "tornado"
        case 800:
            iconName = "sun.max"
        case 801 ... 802:
            iconName = "cloud.sun"
        case 803:
            iconName = "cloud"
        case 804:
            iconName = "smoke"
        default:
            iconName = "questionmark.diamond"
        }
        return iconName
    }
    
}
