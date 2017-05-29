//
//  DataTableViewCell.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import UIKit
import TableKit
import AlamofireImage

class DataTableViewCell: UITableViewCell, ConfigurableCell {
    
    
    static var cellIdentifier: String = "DataTableViewCell"
    static var rowHeight: CGFloat?
    static var estimatedHeight: CGFloat?
    
    
    func configure(with model: Item) {
        self.textLabel?.text = model.title
        if let url = URL(string: model.imageURL) {
            self.imageView?.af_setImage(withURL: url, placeholderImage: UIImage(named: "empty_image"))
        } else {
            self.imageView?.image = UIImage(named: "empty_image")
        }
        
        
    }
}
