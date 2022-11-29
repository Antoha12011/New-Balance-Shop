//
//  TableViewDetail.swift
//  New Balance
//
//  Created by Антон Павлов on 29.11.2022.
//

import Foundation
import UIKit

class TableViewDetail: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var discription: UITextView!
    @IBOutlet weak var priceLbl: UILabel!
    
    var selectedShape : Shape!
    
    
    @IBAction func ClickToAddInCart(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = "Модель: " + selectedShape.name
        image.image = UIImage(named: selectedShape.imageName)
        discription.text = selectedShape.bigText
        priceLbl.text = "Цена: " + selectedShape.price
    }
}


