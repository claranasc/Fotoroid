//
//  FinalViewController.swift
//  Fotoroid
//
//  Created by Clara Nascimento on 11/02/21.
//

import UIKit
import Photos

class FinalViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!
    var image: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
        ivPhoto.layer.borderWidth = 10
        ivPhoto.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    @IBAction func restart(_ sender: UIButton) {
    }
}
