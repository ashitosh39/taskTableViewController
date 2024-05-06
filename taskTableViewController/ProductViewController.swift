//
//  ProductViewController.swift
//  taskTableViewController
//
//  Created by Macintosh on 14/12/23.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate {
   
    @IBOutlet weak var producttableView: UITableView!
    var productImageArray  = [UIImage(named: "download (1)"),
                              UIImage(named: "download (2)"),
                              UIImage(named: "download"),
                              UIImage(named: "images")]
                              
    
    var productNameArray = [ "samsung","oppo","redmi","vivo"]
    
    var productPriceArray  = ["10000","20000", "25000", "15000"]
    
override func viewDidLoad() {
        super.viewDidLoad()
    initializeProductTableView()
    registerXIBWithProductTableView()
       
    }
    func initializeProductTableView(){
        producttableView.dataSource = self
        producttableView.delegate = self
}
    func registerXIBWithProductTableView(){
        let uiNib = UINib(nibName : "ProductTableViewCell", bundle : nil )
        self.producttableView.register(uiNib, forCellReuseIdentifier: "ProductTableViewCell")
    }
    
}
extension ProductViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productImageArray.count
        
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
         let productTableViewCell = (self.producttableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell)
        productTableViewCell.productImage.image = productImageArray[indexPath.row]
        productTableViewCell.productName.text = productNameArray[indexPath.row]
        productTableViewCell.productprice.text = productPriceArray[indexPath.row]
        return productTableViewCell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ProductDetailViewController = (self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController)
        
        ProductDetailViewController.ProductImageContainer = productImageArray[indexPath.row]
        ProductDetailViewController.ProductPriceContainer = productNameArray[indexPath.row]
        ProductDetailViewController.productNameContainer = productPriceArray[indexPath.row]
        navigationController?.pushViewController(ProductDetailViewController, animated: true)
    }
}
extension ProductDetailViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80.0
    }
    
}

