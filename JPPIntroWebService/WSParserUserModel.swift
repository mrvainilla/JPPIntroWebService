//
//  WSParserUserModel.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserUserModel: NSObject {
    
    
    func getUserParserModel(_ dataFromNetworks : NSData) -> [WSPostUser]{
        
        var arrayPostModel = [WSPostUser]()
        let jsonLegible = JSON(data: dataFromNetworks as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        for item in 0..<jsonLegible.count{
            
            /*let postModel = WSPostUser(pUserId: jsonLegible[item]["userId"].int!, pId: jsonLegible[item]["id"].int!, pTitle: jsonLegible[item]["title"].string!, pBody: jsonLegible[item]["body"].string!)*/
            
            let geoModel = WSGeo(pLat: jsonLegible[item]["address"]["geo"]["lat"].string!, pLng: jsonLegible[item]["address","geo","lng"].string!)
            let companyModel = WSCompany(pName: jsonLegible[item]["company"]["name"].string!, pCatchPhrase: jsonLegible[item]["company"]["catchPhrase"].string!, pBs: jsonLegible[item]["company"]["bs"].string!)
            let addressModel = WSAddress(pStreet: jsonLegible[item]["address"]["street"].string!, pSuite: jsonLegible[item]["address"]["suite"].string!, pCity: jsonLegible[item]["address"]["city"].string!, pZipcode: jsonLegible[item]["address"]["zipcode"].string!, pGeo: geoModel)
            let userModel = WSPostUser(pId: jsonLegible[item]["id"].int!, pName: jsonLegible[item]["name"].string!, pUsername: jsonLegible[item]["username"].string!, pEmail: jsonLegible[item]["email"].string!, pAddress: addressModel, pPhone: jsonLegible[item]["phone"].string!, pWebsite: jsonLegible[item]["website"].string!, pCompany: companyModel)
            
            arrayPostModel.append(userModel)
            
        }
        
        return arrayPostModel
    }

}
