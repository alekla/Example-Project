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
    private var dataBaseManager: DataBaseManager!
    private var items: [Item]!
    init(view: PageNetworkDataViewInput, networkManager: NetworkManager, dataBaseManager: DataBaseManager) {
        self.view = view
        self.networkManager = networkManager
        self.dataBaseManager = dataBaseManager
    }
    
    
    func viewIsReady() {
        view.showIndicatorView()
        networkManager.getData() { result in
            switch result {
            case .failure(let error) where error == NetworkManagerError.unavailable:
                self.view.hideIndicatorView()
                self.view.showError("Не удалось загрузить данные")
            case .success(let items):
                self.items = items
                self.view.setupInitialState(items: items)
                self.view.hideIndicatorView()
            default: break
            }
            
        }
    }
    
    func didSaveButtonTapped() {
        for item in self.items {
            self.dataBaseManager.saveItem(item: item)
        }
    }
    
    
}
