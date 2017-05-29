//
//  PageDataBaseDataViewController.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import UIKit
import TableKit

class PageDataBaseDataViewController: UIViewController, PageDataBaseDataViewInput {
    
    
    private var output: PageDataBaseDataViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = PageDataBaseDataPresenter(view: self, dataBaseManager: DataBaseManagerImpl.shared)
        
        
    }
}


