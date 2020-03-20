//
//  Holiday.swift
//  HolidayCalendar
//
//  Created by Nishika Agarwal on 11/03/20.
//  Copyright © 2020 Nishika Agarwal. All rights reserved.
//

import Foundation

struct HolidayResponse:Decodable {
    var response:Holidays
}

struct Holidays:Decodable {
    var holidays:[HolidayDetail]
}

struct HolidayDetail:Decodable {
    var name:String
    var date:DateInfo
}

struct DateInfo:Decodable {
    var iso:String
}
