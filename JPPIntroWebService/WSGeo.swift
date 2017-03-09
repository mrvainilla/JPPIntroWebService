//
//  WSGeo.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WSGeo: NSObject {
    
    var lat : String?
    var lng : String?

    init(pLat : String, pLng : String){
        self.lat = pLat
        self.lng = pLng
        super.init()
    }
    
}
