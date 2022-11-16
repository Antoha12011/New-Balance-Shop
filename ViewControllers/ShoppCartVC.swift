//
//  ShoppingCartViewController.swift
//  New Balance
//
//  Created by Антон Павлов on 27.10.2022.
//

import UIKit

class ShoppCartVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonToDecoration(_ sender: UIButton) {
        // Alert
        let alert = UIAlertController(title: "", message: "Убедитесь что всё верно добавили в заказ перед тем, как подтвердить его! В течении 5 минут с ваши свяжется наш менеджер для уточнения деталей", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Подтвердить", style: .destructive, handler: nil)
        let backBtn = UIAlertAction(title: "Назад", style: .cancel, handler: nil)
        alert.addAction(okBtn)
        alert.addAction(backBtn)
        present(alert, animated: true, completion: nil)
        
    }
}
