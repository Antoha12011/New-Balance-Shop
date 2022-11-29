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
        let circle = Shape(bigText: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu", name: "New Balance 534", imageName: "1", price: "19.999₽")
        shapeList.append(circle)

        let square = Shape(bigText: "", name: "New Balance 997", imageName: "2", price: "19.999₽")
        shapeList.append(square)

        let octagon = Shape(bigText: "", name: "New Balance", imageName: "3", price: "19.999₽")
        shapeList.append(octagon)

        let rectangle = Shape(bigText: "", name: "New Balance", imageName: "4", price: "19.999₽")
        shapeList.append(rectangle)

        let triangle = Shape(bigText: "", name: "New Balance", imageName: "5", price: "19.999₽")
        shapeList.append(triangle)

        let circle2 = Shape(bigText: "", name: "New Balance", imageName: "6", price: "19.999₽")
        shapeList.append(circle2)

        let square2 = Shape(bigText: "", name: "New Balance", imageName: "7", price: "19.999₽")
        shapeList.append(square2)

        let octagon2 = Shape(bigText: "", name: "New Balance", imageName: "8", price: "19.999₽")
        shapeList.append(octagon2)

        let rectangle2 = Shape(bigText: "", name: "New Balance", imageName: "9", price: "19.999₽")
        shapeList.append(rectangle2)

        let triangle2 = Shape(bigText: "", name: "New Balance", imageName: "10", price: "19.999₽")
        shapeList.append(triangle2)
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
        tableViewCell.priceNew.text = thisShape.price
        
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


