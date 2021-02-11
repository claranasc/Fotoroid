//
//  ViewController.swift
//  Fotoroid
//
//  Created by Clara Nascimento on 10/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func selectSource(_ sender: UIButton) {
        let alert = UIAlertController(title: "Selecionar foto", message: "De onde você quer escolher a sua foto?", preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            
            let cameraAction = UIAlertAction(title: "Câmera", style: .default, handler: { (action) in
                self.selectPicture(sourceType: .camera)
            })
            alert.addAction(cameraAction)
        }
        
            let libraryAction = UIAlertAction(title: "Biblioteca de fotos", style: .default) { (action) in
                self.selectPicture(sourceType: .photoLibrary)
            }
            alert.addAction(libraryAction)
        
            let photosAction = UIAlertAction(title: "Álbum de fotos", style: .default) { (action) in
                self.selectPicture(sourceType: .savedPhotosAlbum)
            }
            alert.addAction(photosAction)
        
            let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func selectPicture(sourceType: UIImagePickerController.SourceType) {
        
    }
    
}

