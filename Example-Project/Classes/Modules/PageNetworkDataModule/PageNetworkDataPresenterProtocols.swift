//
//  PageNetworkDataPresenterProtocols.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import Foundation


protocol PageNetworkDataViewInput: class {
    
    func showIndicatorView()
    
    func hideIndicatorView()
    
    func showError(_ error: String)
    
    func setupInitialState(items: [Item])
    
}


protocol PageNetworkDataViewOutput {
    
    func viewIsReady()
    
    func didSaveButtonTapped()
    
}
