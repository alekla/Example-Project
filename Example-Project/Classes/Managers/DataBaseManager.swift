//
//  DataBaseManager.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

protocol DataBaseManager {
    
    func getData() -> [Item]
}


class DataBaseManagerImpl: DataBaseManager {
    
    static let shared = DataBaseManagerImpl()
    
    func getData() -> [Item] {
        let realm = try! Realm()
        let objects = realm.objects(Item.self)
        return Array(objects)
    }
    
    
}
