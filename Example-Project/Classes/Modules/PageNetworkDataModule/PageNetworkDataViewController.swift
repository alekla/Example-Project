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
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet var saveBarButtonItem: UIBarButtonItem!
    private var dataManager: TableDirector!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = PageNetworkDataPresenter(view: self, networkManager: NetworkManagerImpl.shared, dataBaseManager: DataBaseManagerImpl.shared)
        dataManager = TableDirector(tableView: table)
        table.register(UINib(nibName: "DataTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: DataTableViewCell.cellIdentifier)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.rightBarButtonItem = nil
        super.viewWillAppear(animated)
        output.viewIsReady()
    }
    
    func setupInitialState(items: [Item]) {
        self.dataManager.clear()
        self.navigationItem.rightBarButtonItem = saveBarButtonItem
        let section = TableSection()
        for item in items {
            let row = TableRow<DataTableViewCell>(model: item)
            section += row
        }
        dataManager += section
        dataManager.reload()
    }
    
    func showIndicatorView() {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    func hideIndicatorView(){
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    func showError(_ error: String) {
        showAlertWindow("Уведомление", message: error)
    }
    
    //  MARK:- IBActions
    
    @IBAction func didSaveButtonTapped(_ sender: UIBarButtonItem) {
        output.didSaveButtonTapped()
    }
}

