//
//  APIManagerData.swift
//  JPPIntroWebService
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 empre. All rights reserved.
//

import UIKit

class APIManagerData: NSObject {
    
    //MARK: - Variable locales
    let post = WSParserDataUno()
    let users = WSParserUserModel()
    
    //MARK: - Singleton
    static let shared = APIManagerData()
    
    //MARK: - Llamada singleton post
    func getPostApi() -> [WSPostModel]{
        
        let url = URL(string: constantes.BASE_URL.BASE_URL_POST)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayPostModel = post.getPostParserModel(jsonFromData!)
        return arrayPostModel
        
    }
    
    
    //MARK: - Llamada singleton post
    func getUserApi() -> [WSPostUser]{
        
        let url = URL(string: constantes.BASE_URL.BASE_URL_POST_USER)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayUserModel = users.getUserParserModel(jsonFromData!)
        return arrayUserModel
        
    }

}
