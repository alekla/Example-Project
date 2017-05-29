//
//  PageDataBaseDataPresenter.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation


class PageDataBaseDataPresenter: NSObject, PageDataBaseDataViewOutput {
    
    private weak var view: PageDataBaseDataViewInput!
    private var dataBaseManager: DataBaseManager!
    
    init(view: PageDataBaseDataViewInput, dataBaseManager: DataBaseManager) {
        self.view = view
        self.dataBaseManager = dataBaseManager
    }
    
}
