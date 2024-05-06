//
//  ProductDetailViewController.swift
//  taskTableViewController
//
//  Created by Macintosh on 14/12/23.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var productImageLabel: UIImageView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productPriceLabel: UILabel!
    var ProductImageContainer : UIImage?
    var productNameContainer : String?
    var ProductPriceContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productImageLabel.image = ProductImageContainer
        self.productNameLabel.text = productNameContainer
        self.productPriceLabel.text = ProductPriceContainer
      
    }
    

    
}
