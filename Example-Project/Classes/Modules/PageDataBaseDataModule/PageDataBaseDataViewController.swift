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
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet var clearBarButtonItem: UIBarButtonItem!
    
    private var dataManager: TableDirector!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = PageDataBaseDataPresenter(view: self, dataBaseManager: DataBaseManagerImpl.shared)
        table.register(UINib(nibName: "DataTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: DataTableViewCell.cellIdentifier)
        dataManager = TableDirector(tableView: table)
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.rightBarButtonItem = nil
        super.viewWillAppear(animated)
        output.viewIsReady()
    }
    
    func setupInitialState(items: [Item]) {
        self.dataManager.clear()
        self.navigationItem.rightBarButtonItem = clearBarButtonItem
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
    
    @IBAction func didClearButtonTapped(_ sender: UIBarButtonItem) {
        output.didClearButtonTapped()
        self.navigationItem.rightBarButtonItem = nil
        self.dataManager.clear()
        self.dataManager.reload()
    }
}


