//
//  Product.swift
//  coder-swag
//
//  Created by Anshul Kapoor on 10/10/17.
//  Copyright © 2017 Anshul Kapoor. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String

    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
