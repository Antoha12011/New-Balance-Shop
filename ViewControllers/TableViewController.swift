//
//  TableViewController.swift
//  New Balance
//
//  Created by Антон Павлов on 29.11.2022.
//


import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var shapeTableView: UITableView!
    
    var shapeList = [Shape]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initList()
    }
    
    public func initList() {
        let dataShoes = Shape(bigText: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu", name: "New Balance 574", imageName: "1", price: "19.999₽")
        shapeList.append(dataShoes)

        let dataShoes1 = Shape(bigText: "", name: "New Balance 997", imageName: "2", price: "19.999₽")
        shapeList.append(dataShoes1)

        let dataShoes2 = Shape(bigText: "", name: "New Balance 574", imageName: "3", price: "19.999₽")
        shapeList.append(dataShoes2)

        let dataShoes3 = Shape(bigText: "", name: "New Balance 574", imageName: "4", price: "19.999₽")
        shapeList.append(dataShoes3)

        let dataShoes4 = Shape(bigText: "", name: "New Balance 327", imageName: "5", price: "19.999₽")
        shapeList.append(dataShoes4)

        let dataShoes5 = Shape(bigText: "", name: "New Balance 327", imageName: "6", price: "19.999₽")
        shapeList.append(dataShoes5)

        let dataShoes6 = Shape(bigText: "", name: "New Balance 574", imageName: "7", price: "19.999₽")
        shapeList.append(dataShoes6)

        let dataShoes7 = Shape(bigText: "", name: "New Balance 574", imageName: "8", price: "19.999₽")
        shapeList.append(dataShoes7)

        let dataShoes8 = Shape(bigText: "", name: "New Balance 237", imageName: "9", price: "19.999₽")
        shapeList.append(dataShoes8)

        let dataShoes9 = Shape(bigText: "", name: "New Balance 574", imageName: "10", price: "19.999₽")
        shapeList.append(dataShoes9)
        
        let dataShoes10 = Shape(bigText: "", name: "New Balance 574", imageName: "11", price: "19.999₽")
        shapeList.append(dataShoes10)

        let dataShoes11 = Shape(bigText: "", name: "New Balance ", imageName: "12", price: "19.999₽")
        shapeList.append(dataShoes11)

        let dataShoes12 = Shape(bigText: "", name: "New Balance 997", imageName: "13", price: "19.999₽")
        shapeList.append(dataShoes12)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! TableViewCell
        
        _ = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID")
        
        let thisShape = shapeList[indexPath.row]
        
        tableViewCell.shapeName.text = thisShape.name
        tableViewCell.shapeImage.image = UIImage(named: thisShape.imageName)
        tableViewCell.priceNew.text = "Цена: " + thisShape.price
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 140
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detailSegue") {
            let indexPath = self.shapeTableView.indexPathForSelectedRow!
            
            let tableViewDetail = segue.destination as? TableViewDetail
            
            let selectedShape = shapeList[indexPath.row]
            
            tableViewDetail!.selectedShape = selectedShape
            
            self.shapeTableView.deselectRow(at: indexPath, animated: true)
        }
    }
}


