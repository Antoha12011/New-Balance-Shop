//
//  ViewController.swift
//  New Balance
//
//  Created by Антон Павлов on 18.09.2022.
//


import UIKit

class HomeVc: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    
    @IBOutlet weak var tableShoes: UITableView!
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        
        let title: String
        let imageName: String
        var price: String
    }
    
    let data: [Sunset] = [Sunset(title: "New Balance 574", imageName: "1", price: "18.999₽"),
                    Sunset(title: "New Balance 997", imageName: "2", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "3", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "4", price: "18.999₽"),
                    Sunset(title: "New Balance 327", imageName: "5", price: "18.999₽"),
                    Sunset(title: "New Balance 327", imageName: "6", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "7", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "8", price: "18.999₽"),
                    Sunset(title: "New Balance 237", imageName: "9", price: "16.999₽"),
                    Sunset(title: "New Balance 574", imageName: "10", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "11", price: "18.999₽"),
                    Sunset(title: "New Balance 574", imageName: "12", price: "18.999₽"),
                    Sunset(title: "New Balance 997", imageName: "13", price: "18.999₽"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Переиспользование ячеек
        _ = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.label.text = sunset.title
        cell.priceLbl.text = sunset.price
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    
    
    // Функция отвечает за размер ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
  
}
    
    
    
    
    

   
