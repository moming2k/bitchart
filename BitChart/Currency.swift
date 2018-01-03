//
//  Currency.swift
//  BitChart
//
//  Created by Chris Chan on 3/1/2018.
//  Copyright © 2018 IGPSD Ltd. All rights reserved.
//

import Foundation

class Currency {
    var title: NSString?
    var code: NSString?
    var rateChange: NSNumber?
    var amount: NSNumber?
    
    init()
    {
        title = ""
        code = ""
        rateChange = 0
        amount = 0
    }
}
