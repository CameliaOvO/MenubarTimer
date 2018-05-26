//
//  DateCalculator.swift
//  BeenCouple
//
//  Created by Camelia Park on 2018. 5. 26..
//  Copyright © 2018년 Camelia Park. All rights reserved.
//

import Foundation

class DateCalculator{
    func calculate(startDate:String) -> Int{
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let interval = Date().timeIntervalSince(dateFormatter.date(from:startDate)!)
        let days = Int(interval / 86400) +  1
        return days
    }
}
