//
//  PageNetworkDataPresenter.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation


class PageNetworkDataPresenter: NSObject, PageNetworkDataViewOutput {
    
    private weak var view: PageNetworkDataViewInput!
    
    init(view: PageNetworkDataViewInput) {
        self.view = view
    }
    
    
}
