//
//  App_Utils.swift
//  JPPIntroWebService
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 empre. All rights reserved.
//

import Foundation

let constantes = Constantes()

struct Constantes{
    let BASE_URL = Base_Url()
}


struct Base_Url {
    let BASE_URL_POST = "https://jsonplaceholder.typicode.com/posts"
    let BASE_URL_POST_USER = "https://jsonplaceholder.typicode.com/users"
}
