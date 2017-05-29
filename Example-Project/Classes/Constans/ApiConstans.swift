//
//  ApiConstans.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation
import Alamofire


public struct REST {
    private(set) var url:String!
    private(set) var method:HTTPMethod!
    private(set) var encoding: ParameterEncoding!
}



enum Api {
    
    
    case getData
    
    
}


extension Api {
    
    var host: String  {
        return ""
    }

    
    var rest: REST {
        switch self {
        
        case .getData:
            return REST(url: host + "/", method: .get, encoding: URLEncoding.default)
        }
    }
}
