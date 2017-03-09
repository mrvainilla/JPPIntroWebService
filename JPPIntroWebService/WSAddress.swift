//
//  WSAddress.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WSAddress: NSObject {
    
    var street : String?
    var suite : String?
    var city : String?
    var zipcode : String?
    var geo : WSGeo?
    
    init(pStreet : String, pSuite : String, pCity : String, pZipcode : String, pGeo : WSGeo ){
        self.street = pStreet
        self.suite = pSuite
        self.city = pCity
        self.zipcode = pZipcode
        self.geo = pGeo
        super.init()
        
    }

}
