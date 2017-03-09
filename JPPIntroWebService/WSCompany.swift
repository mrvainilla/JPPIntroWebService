//
//  WSCompany.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WSCompany: NSObject {
    
    
    var name : String?
    var catchPhrase : String?
    var bs : String?

    init(pName : String, pCatchPhrase : String, pBs : String){
     
        self.name = pName
        self.catchPhrase = pCatchPhrase
        self.bs = pBs
        super.init()
    }
    
}
