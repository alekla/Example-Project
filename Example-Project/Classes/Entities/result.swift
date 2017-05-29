//
//  result.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation


enum Result<DataType, ErrorType> {
    
    case success(DataType)
    case failure(ErrorType)
    
}
