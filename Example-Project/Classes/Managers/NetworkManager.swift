//
//  NetworkManager.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

enum NetworkManagerError: Error {
    case unavailable
}


protocol NetworkManager {
    func getData(completionHandler: @escaping closing<Result<[Item], NetworkManagerError>>)
    
}


class NetworkManagerImpl: NetworkManager {
    
    static let shared = NetworkManagerImpl()
    let sessionManager = SessionManager()
    
    func getData(completionHandler: @escaping closing<Result<[Item], NetworkManagerError>>) {
        let rest = Api.getData.rest
        sessionManager.request(rest: rest, parameters: nil, headers: nil).responseArray() { (response: DataResponse<[Item]>) in
            if let data = response.result.value {
                completionHandler(.success(data))
            } else {
                completionHandler(.failure(NetworkManagerError.unavailable))
            }
        }
    }
}
