//
//  DetailViewController.swift
//  MyStory
//
//  Created by Mardan Mahmut on 3/1/23.
//

import UIKit

class DetailViewController: UIViewController {

    var luffy: Luffy?
    
    @IBOutlet weak var luffyImageView: UIImageView!
    
    @IBOutlet weak var luffyImageName: UILabel!
    
    @IBOutlet weak var luffyImageContext: UILabelg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let luffy = luffy {
            luffyImageView.image = luffy.image
            luffyImageName.text = luffy.name
            luffyImageContext.text = luffy.context
            
        }

        // Do any additional setup after loading the view.
    }

}
