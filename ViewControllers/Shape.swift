//
//  Shape.swift
//  New Balance
//
//  Created by Антон Павлов on 29.11.2022.
//

import Foundation

class Shape {
    
    var name : String!
    var imageName : String!
    var bigText: String!
    var price: String!
    
    public init(bigText: String, name:String, imageName:String, price: String) {
        self.bigText = bigText
        self.name = name
        self.imageName = imageName
        self.price = price
    }
}

