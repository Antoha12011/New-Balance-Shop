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
    }
    
    let data: [Sunset] = [Sunset(title: "New Balance", imageName: "1"),
                           Sunset(title: "New Balance", imageName: "2"),
                           Sunset(title: "New Balance", imageName: "3"),
                           Sunset(title: "New Balance", imageName: "4"),
                           Sunset(title: "New Balance", imageName: "5"),
                           Sunset(title: "New Balance", imageName: "6"),
                           Sunset(title: "New Balance", imageName: "7"),
                           Sunset(title: "New Balance", imageName: "8"),
                           Sunset(title: "New Balance", imageName: "9"),
                           Sunset(title: "New Balance", imageName: "10"),
                           Sunset(title: "New Balance", imageName: "11"),
                           Sunset(title: "New Balance", imageName: "12"),
                           Sunset(title: "New Balance", imageName: "13"),]
    
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
    
    
    
    
    

   
