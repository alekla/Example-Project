//
//  Item.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper
import RealmSwift
import Realm

class Item: Object,Mappable  {
    
    dynamic var title: String = ""
    dynamic var imageURL: String = ""
    
    func mapping(map: Map) {
        title <- map["title"]
        imageURL <- map["imageURL"]        
    }
    required convenience init?(map: Map) {self.init() }
    required init() { super.init() }
    required init(value: Any, schema: RLMSchema) {super.init(value: value, schema: schema) }
    required init(realm: RLMRealm, schema: RLMObjectSchema) {super.init(realm: realm, schema: schema) }
}


