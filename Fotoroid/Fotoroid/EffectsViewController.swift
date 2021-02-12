//
//  EffectsViewController.swift
//  Fotoroid
//
//  Created by Clara Nascimento on 11/02/21.
//

import UIKit

class EffectsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image

    }
}
