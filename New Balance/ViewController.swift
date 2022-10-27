//
//  ViewController.swift
//  New Balance
//
//  Created by Антон Павлов on 18.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        
        let title: String
        let imageName: String
        var subTitle: String
    }
    
    let data: [Sunset] = [Sunset(title: "New Balance", imageName: "1", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "2", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "3", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "4", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "5", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "6", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "7", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "8", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "9", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "10", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "11", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "12", subTitle: "Описание"),
                    Sunset(title: "New Balance", imageName: "13", subTitle: "Описание"),
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
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    
    // Функция отвечает за размер ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
    
    
    
    
    

   
