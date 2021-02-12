//
//  FinalViewController.swift
//  Fotoroid
//
//  Created by Clara Nascimento on 11/02/21.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    @IBAction func restart(_ sender: UIButton) {
    }
    
    
}
