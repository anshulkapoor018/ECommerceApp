//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Anshul Kapoor on 10/10/17.
//  Copyright © 2017 Anshul Kapoor. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
