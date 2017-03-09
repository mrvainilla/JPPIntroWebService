//
//  WSPostUser.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class WSPostUser: NSObject {

    
    var id : Int?
    var name : String?
    var username : String?
    var email : String?
    var address : WSAddress?
    var phone : String?
    var website : String?
    var company : WSCompany?
    
    init(pId : Int, pName : String, pUsername : String, pEmail : String, pAddress : WSAddress, pPhone : String, pWebsite : String, pCompany : WSCompany){
        
        self.id = pId
        self.name = pName
        self.username = pUsername
        self.email = pEmail
        self.address = pAddress
        self.phone = pPhone
        self.website = pWebsite
        self.company = pCompany
        super.init()
    }
    
}
