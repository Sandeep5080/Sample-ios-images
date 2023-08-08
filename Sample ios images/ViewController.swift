//
//  ViewController.swift
//  Sample ios images
//
//  Created by Sandeep Reddy on 24/03/23.
//

import UIKit
//changes
class ViewController: UIViewController {
    
    let colorr: [UIColor] = [
        .systemCyan,
        .systemGray
    ]
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var btnPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.layer.borderWidth = 1
        ImageView.layer.cornerRadius = 26
        
        self.btnPressed.layer.borderWidth = 1
        self.btnPressed.layer.cornerRadius = 26
        self.btnPressed.backgroundColor = .clear
        
    }
    
    @IBAction func btntapped(_ sender: Any) {
        self.view.backgroundColor = colorr.randomElement()
      
            
            let urlString = "https://source.unsplash.com/random/300200"
            
            let url = URL(string: urlString)
            
            
            guard let data = try? Data(contentsOf: url!) else {
                return
            }
            DispatchQueue.main.async {
            self.ImageView.image = UIImage(data: data)
            
        }
        
        
    }
}
