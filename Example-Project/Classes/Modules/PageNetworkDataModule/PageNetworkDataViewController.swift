//
//  PageNetworkDataViewController.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import UIKit
import TableKit

class PageNetworkDataViewController: UIViewController, PageNetworkDataViewInput {
    
    
    private var output: PageNetworkDataViewOutput!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = PageNetworkDataPresenter(view: self, networkManager: NetworkManagerImpl.shared)
        
    }
    
    func showIndicatorView() {
        indicator.startAnimating()
    }
    
    func hideIndicatorView(){
        indicator.stopAnimating()
    }
}

