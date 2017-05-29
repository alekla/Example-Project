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
    private var networkManager: NetworkManager!
    
    init(view: PageNetworkDataViewInput, networkManager: NetworkManager) {
        self.view = view
        self.networkManager = networkManager
    }
    
    
    func viewIsReady() {
        view.showIndicatorView()
        view.hideIndicatorView()
    }
    
    
}
