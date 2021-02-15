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
    
    lazy var filterManager: FilterManager = {
        let filterManager = FilterManager(image: image)
        return filterManager
    }()

    /*
    let filterImageNames = [
        "comic", "sepia", "halftone", "crystallize", "vignette", "noir"
    ]
 */
        
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        ivPhoto.image = filterManager.applyFilter(type: FilterType(rawValue: 0)!)
    }
    
/*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
*/
 
/*
    func showLoading(_ show: Bool) {
        viLoading.isHidden = !show
    }
*/
    
}

/*
extension EffectsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filterManager.filterNames.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EffectCollectionViewCell
        
        cell.ivEffect.image = UIImage(named: filterImageNames[indexPath.row])
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let type = FilterType(rawValue: indexPath.row) {
            showLoading(true)
            let filteredImage = self.filterManager.applyFilter(type: type)
            self.ivPhoto.image = filteredImage
            showLoading(false)
        }
    }
}
*/
