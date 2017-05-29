//
//  Alamofire+REST.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation
import Alamofire

public extension Alamofire.SessionManager {
    
    public func request(rest: REST, parameters: Parameters?, headers: HTTPHeaders?) -> Alamofire.DataRequest {
        return request(rest.url, method: rest.method, parameters: parameters, encoding: rest.encoding, headers: headers)
    }
}
