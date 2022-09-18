//
//  ProductCell.swift
//  New Balance
//
//  Created by Антон Павлов on 17.09.2022.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    // MARK: - Метод позволяющий переиспользовать ячейки
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
    }

    func setupCell(product: Product) {
        self.productImage.image = product.image
    }
    
}
