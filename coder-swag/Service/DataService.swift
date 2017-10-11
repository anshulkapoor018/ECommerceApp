//
//  DataService.swift
//  coder-swag
//
//  Created by Anshul Kapoor on 10/10/17.
//  Copyright © 2017 Anshul Kapoor. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [
        Product(title: "Django Developers Graphics Hat", price: "₹199", imageName: "hat01.png"),
        Product(title: "Django Developers Black Hat", price: "₹179", imageName: "hat02.png"),
        Product(title: "Django Developers White Hat", price: "₹159", imageName: "hat03.png"),
        Product(title: "Django Developers Special Hat", price: "₹339", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Django Developers Graphics Hoodie", price: "₹1099", imageName: "hoodie01.png"),
        Product(title: "Django Developers Red Hoodie", price: "₹1079", imageName: "hoodie02.png"),
        Product(title: "Django Developers Grey Hoodie", price: "₹1059", imageName: "hoodie03.png"),
        Product(title: "Django Developers Black Hoodie", price: "₹3039", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Django Developers Graphics Shirt", price: "₹599", imageName: "shirt01.png"),
        Product(title: "Django Developers Badge Shirt", price: "₹779", imageName: "shirt02.png"),
        Product(title: "Django Developers Red Shirt", price: "₹459", imageName: "shirt03.png"),
        Product(title: "Django Developers Delicate Grey Shirt", price: "₹339", imageName: "shirt04.png"),
        Product(title: "Django Developers Studio Shirt", price: "₹369", imageName: "shirt05.png")
    ]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL ":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    func getHats() -> [Product]{
        return hats
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getDigitalGoods() -> [Product]{
        return digital
    }
}
